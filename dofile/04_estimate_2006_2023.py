"""
NSFG生育议价能力分析脚本 (合并版本)
功能：
1. 读取清理后的NSFG数据
2. 实现结构模型估计女性生育议价能力
3. 分析生育意愿分歧的描述性统计
4. 按不同群体分组估计议价能力
5. 生成估计结果、可视化和报告
"""

import pandas as pd
import numpy as np
import os
from scipy.optimize import minimize
from scipy.special import expit
from scipy.stats import norm
import warnings
warnings.filterwarnings('ignore')

# 设置matplotlib中文字体
try:
    import matplotlib.pyplot as plt
    plt.rcParams['font.sans-serif'] = ['SimHei', 'Arial Unicode MS', 'DejaVu Sans']
    plt.rcParams['axes.unicode_minus'] = False
except ImportError:
    print("matplotlib未安装，跳过可视化功能")

# =============================================================================
# 第一部分：数据加载和预处理
# =============================================================================

def load_and_prepare_data():
    """
    加载和准备数据，包括重新编码生育意愿变量
    """
    print("Enhanced Stage I Analysis: Descriptive Statistics and Group-wise Estimation")
    print("=" * 70)
    
    # Load cleaned data
    file_path = 'temp/data_cleaning/nsfg_cleaned_simple.csv'
    df = pd.read_csv(file_path)
    print(f"原始清理后数据包含 {len(df)} 个观测值")
    
    # Use the updated cleaned data directly
    df_merged = df.copy()
    print(f"使用更新后的清理数据，包含 {len(df_merged)} 个观测值")
    
    # Recode wantedness variables
    print("重新编码变量")
    
    # Define the g(w) function for recoding wantedness
    def recode_wantedness(w):
        if pd.isna(w):
            return np.nan
        if isinstance(w, str):
            w = w.strip()
            if w == 'Wanted':
                return 1.0
            elif w == 'Mistimed':
                return 0.6
            elif w == 'Unwanted':
                return 0.0
            elif w == 'Unknown':
                return 0.5
            else:
                return np.nan
        else:
            # Handle numeric values if they exist (map into [0, 1])
            try:
                w = int(w)
            except Exception:
                return np.nan
            if w == 2:  # Right time
                return 1.0
            elif w == 1:  # Later
                return 0.6
            elif w == 3:  # Too soon, <2y
                return 0.6
            elif w == 4:  # Too soon, ≥2y
                return 0.5
            elif w == 5:  # Indifferent / Didn't care
                return 0.0
            elif w == 6:  # Unwanted
                return 0.3
            else:
                return np.nan
    
    # Apply recoding
    df_merged['gw_f'] = df_merged['WANTEDNESS_R'].apply(recode_wantedness)
    df_merged['gw_m'] = df_merged['WANTEDNESS_P'].apply(recode_wantedness)
    
    # Create binary birth outcome variable
    df_merged['birth'] = (df_merged['PRGOUTCOME'] == 11) | (df_merged['PRGOUTCOME'] == 22)
    
    # Check what variables are available
    print("检查可用变量...")
    available_vars = [col for col in df_merged.columns if col not in ['gw_f', 'gw_m', 'birth']]
    print(f"可用变量数量: {len(available_vars)}")
    
    # Find income-related variables
    income_vars = [col for col in df_merged.columns if any(keyword in col.lower() for keyword in ['earn', 'income', 'wage', 'salary', 'pay'])]
    print(f"收入相关变量 ({len(income_vars)}个): {income_vars}")
    
    # Find labor/work-related variables
    labor_vars = [col for col in df_merged.columns if any(keyword in col.lower() for keyword in ['labor', 'work', 'employ', 'job', 'occup'])]
    print(f"劳动力/工作相关变量 ({len(labor_vars)}个): {labor_vars}")
    
    # Find education-related variables
    educ_vars = [col for col in df_merged.columns if any(keyword in col.lower() for keyword in ['educ', 'school', 'degree', 'college'])]
    print(f"教育相关变量 ({len(educ_vars)}个): {educ_vars}")
    
    # Find demographic variables
    demo_vars = [col for col in df_merged.columns if any(keyword in col.lower() for keyword in ['age', 'race', 'marital', 'child', 'family'])]
    print(f"人口统计变量 ({len(demo_vars)}个): {demo_vars[:10]}...")  # Show first 10
    
    # Check specific income variables
    for var in ['EARN', 'earn', 'earnhs_y', 'earnba_y', 'earntype']:
        if var in df_merged.columns:
            print(f"\n{var}变量存在，包含 {df_merged[var].notna().sum()} 个非缺失值")
            print(f"{var}变量分布:")
            print(df_merged[var].value_counts().sort_index())
        elif var.lower() in [col.lower() for col in df_merged.columns]:
            matching_vars = [col for col in df_merged.columns if var.lower() in col.lower()]
            print(f"\n找到包含'{var}'的变量: {matching_vars}")
    
    # Define covariates for the model
    covariates = [
        'HIEDUC', 'HISPRACE2', 'FMARITAL',
        'POVERTY', 'RELIGION', 'PARITY'
    ]
    
    # Add year variables if available
    if 'SURVEY_YEAR' in df_merged.columns:
        covariates.append('SURVEY_YEAR')
        print("包含调查年份变量: SURVEY_YEAR")
    elif 'YEAR_RANGE' in df_merged.columns:
        covariates.append('YEAR_RANGE')
        print("包含年份范围变量: YEAR_RANGE")
    
    # Create one-hot encoded variables for categorical variables (case-insensitive)
    # Prior code missed uppercase column names; handle both.
    df_encoded = df_merged.copy()
    categorical_vars_candidates = ['HISPRACE2', 'FMARITAL', 'RELIGION']
    for var in categorical_vars_candidates:
        if var in df_encoded.columns:
            dummies = pd.get_dummies(df_encoded[var], prefix=var.lower())
            df_encoded = pd.concat([df_encoded, dummies], axis=1)
            # Keep original numeric code only if user intends it as ordinal; drop to avoid double counting
            df_encoded.drop(var, axis=1, inplace=True)
    
    # Select variables for the model
    model_vars = ['gw_f', 'gw_m', 'birth'] + covariates
    available_model_vars = [var for var in model_vars if var in df_encoded.columns]
    
    # Create the model dataset
    df_model = df_encoded[available_model_vars].copy()
    df_model = df_model.dropna()
    
    print(f"数据加载完成，样本量: {len(df_model):,}")
    
    # Create the design matrix Z (excluding the dependent variables)
    Z_vars = [var for var in available_model_vars if var not in ['gw_f', 'gw_m', 'birth']]
    Z = df_model[Z_vars].copy()
    
    # Standardize continuous numeric covariates to improve optimization stability
    numeric_cols = [c for c in Z.columns if pd.api.types.is_numeric_dtype(Z[c])]
    for col in numeric_cols:
        # Skip standardizing one-hot dummies (they start with candidate prefixes)
        if col.lower().startswith(('hisprace2_', 'fmarital_', 'religion_')):
            continue
        col_mean = Z[col].mean()
        col_std = Z[col].std(ddof=0)
        if col_std > 0:
            Z[col] = (Z[col] - col_mean) / col_std
            if col == 'SURVEY_YEAR':
                print("对SURVEY_YEAR做标准化处理")
    
    # Add intercept
    Z.insert(0, 'intercept', 1.0)
    
    # Convert to float for numerical operations
    Z = Z.astype('float64')
    
    return df_model, Z

# =============================================================================
# 第二部分：结构模型估计
# =============================================================================

def neg_log_likelihood(gamma, Z, gw_f, gw_m, birth_outcome):
    Z = Z.astype(float)
    gw_f = np.clip(gw_f.astype(float), 1e-6, 1-1e-6)
    gw_m = np.clip(gw_m.astype(float), 1e-6, 1-1e-6)
    eta = expit(Z @ gamma)                        # η=Λ(Zγ)
    mix = eta*gw_f + (1-eta)*gw_m                 # 混合指数
    prob = expit(mix)                             # 外层 Λ(·)  —— 关键！
    prob = np.clip(prob, 1e-9, 1-1e-9)
    ll = birth_outcome*np.log(prob) + (1-birth_outcome)*np.log(1-prob)
    return -np.sum(ll)


def estimate_bargaining_power(df_model, Z):
    """
    估计议价能力参数
    """
    try:
        # Initial guess for gamma parameters
        n_params = Z.shape[1]
        gamma_init = np.zeros(n_params)
        
        # Extract data
        gw_f = df_model['gw_f'].values
        gw_m = df_model['gw_m'].values
        birth_outcome = df_model['birth'].values
        
        # Cast to float and clip
        Z_values = Z.values.astype(float)
        gw_f = np.clip(gw_f.astype(float), 1e-6, 1 - 1e-6)
        gw_m = np.clip(gw_m.astype(float), 1e-6, 1 - 1e-6)
        birth_outcome = birth_outcome.astype(float)
        
        # Optimize with a robust solver
        result = minimize(
            neg_log_likelihood,
            gamma_init,
            args=(Z_values, gw_f, gw_m, birth_outcome),
            method='L-BFGS-B',
            options={'maxiter': 2000, 'ftol': 1e-8}
        )
        
        return result
    except Exception as e:
        print(f"估计失败: {e}")
        return None

def calculate_standard_errors(gamma_hat, Z, gw_f, gw_m, birth, result=None):
    """
    计算标准误：优先使用优化器的Hessian逆矩阵；否则用数值Hessian近似
    """
    try:
        # 优先使用优化器的Hessian逆矩阵
        if result is not None and hasattr(result, 'hess_inv') and result.hess_inv is not None:
            try:
                # L-BFGS-B: LbfgsInvHessProduct 带有 todense()
                if hasattr(result.hess_inv, 'todense'):
                    cov_matrix = np.array(result.hess_inv.todense())
                else:
                    cov_matrix = np.asarray(result.hess_inv)
                # 数值稳定
                cov_matrix = cov_matrix + np.eye(len(gamma_hat)) * 1e-9
                std_errors = np.sqrt(np.clip(np.diag(cov_matrix), 0, np.inf))
                return std_errors, cov_matrix
            except Exception:
                pass
        
        # 回退：用数值Hessian近似（中心差分）
        from scipy.optimize import approx_fprime
        eps = 1e-5
        
        def neg_loglik_wrapper(gamma):
            return neg_log_likelihood(gamma, Z, gw_f, gw_m, birth)
        
        # 一阶梯度函数
        def grad(gamma):
            return approx_fprime(gamma, neg_loglik_wrapper, epsilon=eps)
        
        k = len(gamma_hat)
        H = np.zeros((k, k))
        # 计算数值Hessian：对每一维做一次梯度差分
        for i in range(k):
            e_i = np.zeros(k)
            e_i[i] = eps
            g_plus = grad(gamma_hat + e_i)
            g_minus = grad(gamma_hat - e_i)
            H[:, i] = (g_plus - g_minus) / (2 * eps)
        
        # 协方差矩阵（H的逆）
        # 添加小ridge以避免不可逆
        H_reg = H + np.eye(k) * 1e-6
        cov_matrix = np.linalg.inv(H_reg)
        std_errors = np.sqrt(np.clip(np.diag(cov_matrix), 0, np.inf))
        return std_errors, cov_matrix
        
    except Exception as e:
        print(f"⚠ 标准误计算失败: {e}")
        return np.full(len(gamma_hat), np.nan), None


def create_enhanced_results_table(result, Z, covariate_names, df_model):
    """
    创建增强的结果表
    """
    try:
        from scipy.stats import norm
        
        gamma_hat = result.x
        gw_f = df_model['gw_f'].values.astype(float)
        gw_m = df_model['gw_m'].values.astype(float)
        birth = df_model['birth'].values.astype(float)
        Z_values = Z.values.astype(float)
        
        # 计算标准误（传入result以复用hess_inv）
        std_errors, cov_matrix = calculate_standard_errors(gamma_hat, Z_values, gw_f, gw_m, birth, result=result)
        
        # 创建结果DataFrame
        results_df = pd.DataFrame({
            'Variable': covariate_names,
            'Coefficient': gamma_hat,
            'Std_Error': std_errors,
            'Z_Stat': gamma_hat / std_errors,
            'P_Value': 2 * (1 - norm.cdf(np.abs(gamma_hat / std_errors)))
        })
        
        return results_df
        
    except Exception as e:
        print(f"⚠ 结果表创建失败: {e}")
        return None

# =============================================================================
# 第三部分：描述性统计分析
# =============================================================================

def analyze_divergent_preferences(df_model):
    """
    分析生育意愿分歧的描述性统计，包括按年份的分布
    """
    print("生育意愿分歧的描述性统计")
    print("=" * 50)
    
    # Calculate preference divergence
    df_model['preference_divergence'] = abs(df_model['gw_f'] - df_model['gw_m'])
    
    # Identify divergent preferences
    df_model['divergent_preferences'] = df_model['preference_divergence'] > 0.1
    
    # Calculate direction of divergence
    df_model['female_higher'] = (df_model['gw_f'] > df_model['gw_m']) & (df_model['preference_divergence'] > 0.1)
    df_model['male_higher'] = (df_model['gw_m'] > df_model['gw_f']) & (df_model['preference_divergence'] > 0.1)
    df_model['same_preference'] = df_model['preference_divergence'] <= 0.1
    
    # Overall statistics
    total_obs = len(df_model)
    divergent_obs = df_model['divergent_preferences'].sum()
    avg_divergence = df_model['preference_divergence'].mean()
    
    print(f"总体样本统计：")
    print(f"总观测数: {total_obs:,}")
    print(f"有分歧的观测数: {divergent_obs:,}")
    print(f"分歧比例: {divergent_obs/total_obs*100:.1f}%")
    print(f"平均分歧程度: {avg_divergence:.3f}")
    print()
    
    # Group by divergence level
    df_model['divergence_level'] = '无分歧'
    df_model.loc[df_model['preference_divergence'] > 0.1, 'divergence_level'] = '轻微分歧'
    df_model.loc[df_model['preference_divergence'] > 0.3, 'divergence_level'] = '中等分歧'
    df_model.loc[df_model['preference_divergence'] > 0.5, 'divergence_level'] = '较大分歧'
    df_model.loc[df_model['preference_divergence'] > 0.7, 'divergence_level'] = '严重分歧'
    
    divergence_summary = df_model.groupby('divergence_level').agg({
        'birth': ['count', 'mean'],
        'gw_f': 'mean',
        'gw_m': 'mean',
        'preference_divergence': 'mean'
    }).round(3)
    
    print("按分歧程度分组：")
    print(divergence_summary)
    print()
    
    # Direction statistics
    direction_stats = pd.DataFrame({
        '观测数': [
            df_model['same_preference'].sum(),
            df_model['female_higher'].sum(),
            df_model['male_higher'].sum()
        ],
        '比例(%)': [
            df_model['same_preference'].sum() / total_obs * 100,
            df_model['female_higher'].sum() / total_obs * 100,
            df_model['male_higher'].sum() / total_obs * 100
        ],
        '平均分歧程度': [
            0,
            df_model.loc[df_model['female_higher'], 'preference_divergence'].mean(),
            df_model.loc[df_model['male_higher'], 'preference_divergence'].mean()
        ]
    }, index=['意愿相同', '女性意愿更高', '男性意愿更高'])
    
    print("按分歧方向统计：")
    print(direction_stats.round(3))
    print()
    
    # 按年份分析分歧分布
    if 'SURVEY_YEAR' in df_model.columns:
        print("按调查年份分析分歧分布：")
        print("=" * 50)
        
        # 按年份统计分歧程度
        year_divergence = df_model.groupby('SURVEY_YEAR').agg({
            'preference_divergence': ['count', 'mean', 'std'],
            'divergent_preferences': 'sum',
            'female_higher': 'sum',
            'male_higher': 'sum',
            'same_preference': 'sum'
        }).round(3)
        
        # 重命名列
        year_divergence.columns = ['观测数', '平均分歧程度', '分歧程度标准差', '有分歧数量', '女性意愿更高', '男性意愿更高', '意愿相同']
        
        # 计算比例
        year_divergence['分歧比例(%)'] = (year_divergence['有分歧数量'] / year_divergence['观测数'] * 100).round(1)
        year_divergence['女性更高比例(%)'] = (year_divergence['女性意愿更高'] / year_divergence['观测数'] * 100).round(1)
        year_divergence['男性更高比例(%)'] = (year_divergence['男性意愿更高'] / year_divergence['观测数'] * 100).round(1)
        
        print("按年份的分歧统计：")
        print(year_divergence)
        print()
        
        # 按年份和分歧程度分组统计
        print("按年份和分歧程度的详细分布：")
        year_level_dist = df_model.groupby(['SURVEY_YEAR', 'divergence_level']).size().unstack(fill_value=0)
        print(year_level_dist)
        print()
        
        # 按年份和分歧方向分组统计
        print("按年份和分歧方向的详细分布：")
        year_direction_dist = df_model.groupby(['SURVEY_YEAR']).agg({
            'same_preference': 'sum',
            'female_higher': 'sum',
            'male_higher': 'sum'
        })
        year_direction_dist.columns = ['意愿相同', '女性意愿更高', '男性意愿更高']
        print(year_direction_dist)
        print()
        
    elif 'YEAR_RANGE' in df_model.columns:
        print("按年份范围分析分歧分布：")
        print("=" * 50)
        
        # 按年份范围统计分歧程度
        year_divergence = df_model.groupby('YEAR_RANGE').agg({
            'preference_divergence': ['count', 'mean', 'std'],
            'divergent_preferences': 'sum',
            'female_higher': 'sum',
            'male_higher': 'sum',
            'same_preference': 'sum'
        }).round(3)
        
        # 重命名列
        year_divergence.columns = ['观测数', '平均分歧程度', '分歧程度标准差', '有分歧数量', '女性意愿更高', '男性意愿更高', '意愿相同']
        
        # 计算比例
        year_divergence['分歧比例(%)'] = (year_divergence['有分歧数量'] / year_divergence['观测数'] * 100).round(1)
        year_divergence['女性更高比例(%)'] = (year_divergence['女性意愿更高'] / year_divergence['观测数'] * 100).round(1)
        year_divergence['男性更高比例(%)'] = (year_divergence['男性意愿更高'] / year_divergence['观测数'] * 100).round(1)
        
        print("按年份范围的分歧统计：")
        print(year_divergence)
        print()
        
        # 按年份范围和分歧程度分组统计
        print("按年份范围和分歧程度的详细分布：")
        year_level_dist = df_model.groupby(['YEAR_RANGE', 'divergence_level']).size().unstack(fill_value=0)
        print(year_level_dist)
        print()
        
        # 按年份范围和分歧方向分组统计
        print("按年份范围和分歧方向的详细分布：")
        year_direction_dist = df_model.groupby(['YEAR_RANGE']).agg({
            'same_preference': 'sum',
            'female_higher': 'sum',
            'male_higher': 'sum'
        })
        year_direction_dist.columns = ['意愿相同', '女性意愿更高', '男性意愿更高']
        print(year_direction_dist)
        print()
    
    return df_model

def generate_latex_tables(df_model):
    """
    生成LaTeX格式的描述性统计表格
    """
    print("LaTeX格式的描述性统计表格")
    print("=" * 50)
    
    # Table 1: Divergence level distribution
    divergence_summary = df_model.groupby('divergence_level').agg({
        'birth': ['count', 'mean'],
        'gw_f': 'mean',
        'gw_m': 'mean'
    }).round(3)
    
    latex_table1 = f"""
\\begin{{table}}[htbp]
\\centering
\\caption{{生育意愿分歧程度分布}}
\\begin{{tabular}}{{lcccc}}
\\toprule
分歧程度 & 观测数 & 比例(\\%) & 平均女性意愿 & 平均男性意愿 \\\\
\\midrule"""
    
    for level in ['无分歧', '轻微分歧', '中等分歧', '较大分歧', '严重分歧']:
        if level in divergence_summary.index:
            count = divergence_summary.loc[level, ('birth', 'count')]
            pct = count / len(df_model) * 100
            gw_f_mean = divergence_summary.loc[level, ('gw_f', 'mean')]
            gw_m_mean = divergence_summary.loc[level, ('gw_m', 'mean')]
            latex_table1 += f"\n{level} & {count:,} & {pct:.1f} & {gw_f_mean:.3f} & {gw_m_mean:.3f} \\\\"
    
    total_count = len(df_model)
    total_gw_f = df_model['gw_f'].mean()
    total_gw_m = df_model['gw_m'].mean()
    latex_table1 += f"""
\\midrule
总计 & {total_count:,} & 100.0 & {total_gw_f:.3f} & {total_gw_m:.3f} \\\\
\\bottomrule
\\end{{tabular}}
\\end{{table}}"""
    
    print(latex_table1)
    print()
    
    # Table 2: Direction distribution
    direction_stats = pd.DataFrame({
        '观测数': [
            df_model['same_preference'].sum(),
            df_model['female_higher'].sum(),
            df_model['male_higher'].sum()
        ],
        '比例(%)': [
            df_model['same_preference'].sum() / len(df_model) * 100,
            df_model['female_higher'].sum() / len(df_model) * 100,
            df_model['male_higher'].sum() / len(df_model) * 100
        ],
        '平均分歧程度': [
            0,
            df_model.loc[df_model['female_higher'], 'preference_divergence'].mean(),
            df_model.loc[df_model['male_higher'], 'preference_divergence'].mean()
        ],
        '生育率(%)': [
            df_model.loc[df_model['same_preference'], 'birth'].mean() * 100,
            df_model.loc[df_model['female_higher'], 'birth'].mean() * 100,
            df_model.loc[df_model['male_higher'], 'birth'].mean() * 100
        ]
    }, index=['意愿相同', '女性意愿更高', '男性意愿更高'])
    
    latex_table2 = f"""
\\begin{{table}}[htbp]
\\centering
\\caption{{生育意愿分歧方向分布}}
\\begin{{tabular}}{{lcccc}}
\\toprule
分歧方向 & 观测数 & 比例(\\%) & 平均分歧程度 & 生育率(\\%) \\\\
\\midrule"""
    
    for direction in ['意愿相同', '女性意愿更高', '男性意愿更高']:
        count = direction_stats.loc[direction, '观测数']
        pct = direction_stats.loc[direction, '比例(%)']
        divergence = direction_stats.loc[direction, '平均分歧程度']
        birth_rate = direction_stats.loc[direction, '生育率(%)']
        latex_table2 += f"\n{direction} & {count:,} & {pct:.1f} & {divergence:.3f} & {birth_rate:.1f} \\\\"
    
    total_divergence = df_model['preference_divergence'].mean()
    total_birth_rate = df_model['birth'].mean() * 100
    latex_table2 += f"""
\\midrule
总计 & {len(df_model):,} & {total_divergence:.3f} & {total_birth_rate:.1f} \\\\
\\bottomrule
\\end{{tabular}}
\\end{{table}}"""
    
    print(latex_table2)
    print()

# =============================================================================
# 第四部分：分组估计
# =============================================================================

def estimate_by_group(df_model, Z, group_var, group_name):
    """
    按组估计议价能力
    """
    print(f"\n分组估计：按{group_name}分组")
    print("=" * 50)
    
    results = []
    
    for group in df_model[group_var].unique():
        if pd.isna(group):
            continue
            
        subset = df_model[df_model[group_var] == group].copy()
        
        if len(subset) < 50:  # Skip groups with too few observations
            print(f"{group_name}组 {group} 样本量不足 (n={len(subset)})")
            continue
        
        # Create design matrix for this group
        Z_subset = Z.loc[subset.index]
        
        # Estimate for this group
        try:
            result = estimate_bargaining_power(subset, Z_subset)
            
            if result.success:
                # Calculate average eta for this group
                eta_avg = expit(np.dot(Z_subset.values.astype(float), result.x)).mean()
                
                print(f"估计{group_name}组: {group} (n={len(subset)})")
                print(f"  估计的η: {eta_avg:.4f}")
                print()
                
                results.append({
                    'group': group,
                    'n': len(subset),
                    'eta': eta_avg,
                    'converged': result.success,
                    'log_likelihood': -result.fun
                })
            else:
                print(f"估计{group_name}组: {group} (n={len(subset)})")
                print(f"  收敛失败")
                print()
                
        except Exception as e:
            print(f"估计{group_name}组: {group} (n={len(subset)})")
            print(f"  错误: {e}")
            print()
    
    return results

def generate_group_latex_tables(group_results, group_name, total_eta, total_n, total_ll):
    """
    生成分组估计结果的LaTeX表格
    """
    if not group_results:
        return
    
    # Sort results for certain groups
    if '年龄' in group_name:
        # Sort age groups logically
        age_order = ['<20', '20-24', '25-29', '30-34', '35-39', '40+']
        group_results = sorted(group_results, key=lambda x: age_order.index(x['group']) if x['group'] in age_order else 999)
    elif '收入' in group_name:
        # Sort income groups from low to high
        income_order = ['低收入', '中低收入', '中高收入', '高收入']
        group_results = sorted(group_results, key=lambda x: income_order.index(x['group']) if x['group'] in income_order else 999)
    
    latex_table = f"""
\\begin{{table}}[htbp]
\\centering
\\caption{{按{group_name}分组的议价能力估计结果}}
\\begin{{tabular}}{{lcccc}}
\\toprule
{group_name} & 样本量 & 女性议价能力(η) & 收敛状态 & 对数似然 \\\\
\\midrule"""
    
    for result in group_results:
        group = result['group']
        n = result['n']
        eta = result['eta']
        converged = "是" if result['converged'] else "否"
        ll = result['log_likelihood']
        
        if result['converged']:
            latex_table += f"\n{group} & {n:,} & {eta:.4f} & {converged} & {ll:.1f} \\\\"
        else:
            latex_table += f"\n{group} & {n:,} & - & {converged} & - \\\\"
    
    latex_table += f"""
\\midrule
总体 & {total_n:,} & {total_eta:.4f} & 是 & {total_ll:.1f} \\\\
\\bottomrule
\\end{{tabular}}
\\end{{table}}"""
    
    print(latex_table)
    print()

# =============================================================================
# 第五部分：结果分析和可视化
# =============================================================================

def analyze_bargaining_results(results_df, df, gamma_hat, Z):
    """
    分析议价能力估计结果
    使用与估计一致的设计矩阵Z计算eta，避免变量错配/尺度问题
    """
    print("\n" + "="*60)
    print("议价能力结果分析")
    print("="*60)
    
    # 1. 显示主要结果
    print("主要估计结果:")
    print(results_df.round(4))
    
    # 2. 用Z计算每个观测的eta
    Z_values = Z.values.astype(float)
    eta_all = expit(np.dot(Z_values, gamma_hat))
    
    # 3. 分群体的议价权重（基于已计算的eta_all按掩码取均值）
    print("\n不同群体的议价权重:")
    
    # 教育水平
    educ_vars = [col for col in df.columns if any(x in col.upper() for x in ['EDUC', 'SCHOOL', 'GRADE'])]
    if educ_vars:
        print("\n按教育水平:")
        for educ_var in educ_vars[:3]:  # 只显示前3个教育变量
            if educ_var in df.columns:
                unique_vals = df[educ_var].dropna().unique()
                for val in sorted(unique_vals)[:5]:  # 只显示前5个值
                    mask = (df[educ_var] == val).values
                    if mask.sum() > 0:
                        eta_group = eta_all[mask].mean()
                        print(f"  {educ_var}={val}: eta={eta_group:.3f} (N={mask.sum():,})")
    
    # 年龄组
    age_vars = [col for col in df.columns if 'AGE' in col.upper() and 'RESP' in col.upper()]
    if age_vars:
        print("\n按年龄组:")
        age_var = age_vars[0]
        age_bins = [0, 25, 30, 35, 40, 100]
        age_labels = ['<25', '25-29', '30-34', '35-39', '40+']
        
        df['AGE_GROUP'] = pd.cut(df[age_var], bins=age_bins, labels=age_labels, include_lowest=True)
        
        for age_group in age_labels:
            mask = (df['AGE_GROUP'] == age_group).values
            if mask.sum() > 0:
                eta_group = eta_all[mask].mean()
                print(f"  {age_group}: eta={eta_group:.3f} (N={mask.sum():,})")
    
    # 4. 计算总体统计
    print(f"\n总体统计:")
    print(f"  平均议价权重: {eta_all.mean():.3f}")
    print(f"  议价权重标准差: {eta_all.std():.3f}")
    print(f"  议价权重范围: [{eta_all.min():.3f}, {eta_all.max():.3f}]")
    
    return eta_all

def create_bargaining_visualizations(df, eta_all, results_df):
    """
    创建议价能力可视化图表
    """
    print("\n" + "="*60)
    print("创建可视化图表")
    print("="*60)
    
    try:
        import matplotlib.pyplot as plt
        
        # 设置中文字体
        plt.rcParams['font.sans-serif'] = ['SimHei', 'Arial Unicode MS', 'DejaVu Sans']
        plt.rcParams['axes.unicode_minus'] = False
        
        # 设置图表样式
        fig, axes = plt.subplots(2, 2, figsize=(15, 12))
        
        # 1. 议价权重分布
        if len(eta_all) > 0:
            axes[0, 0].hist(eta_all, bins=30, alpha=0.7, color='skyblue', edgecolor='black')
            axes[0, 0].axvline(eta_all.mean(), color='red', linestyle='--', label=f'Mean: {eta_all.mean():.3f}')
            axes[0, 0].set_xlabel('Female Bargaining Weight (η)')
            axes[0, 0].set_ylabel('Frequency')
            axes[0, 0].set_title('Distribution of Female Bargaining Weights')
            axes[0, 0].legend()
            axes[0, 0].grid(True, alpha=0.3)
        else:
            axes[0, 0].text(0.5, 0.5, 'No bargaining weights available', 
                            ha='center', va='center', transform=axes[0, 0].transAxes)
            axes[0, 0].set_title('Distribution of Female Bargaining Weights')
        
        # 2. 意愿差异与议价权重关系
        both_intention = df['gw_f'].notna() & df['gw_m'].notna()
        if both_intention.sum() > 0:
            df_plot = df[both_intention].copy()
            df_plot['WANTEDNESS_DIFF'] = df_plot['gw_f'] - df_plot['gw_m']
            df_plot['ETA'] = eta_all[both_intention]
            
            axes[0, 1].scatter(df_plot['WANTEDNESS_DIFF'], df_plot['ETA'], alpha=0.6, s=20)
            axes[0, 1].set_xlabel('Wantedness Difference (Female - Male)')
            axes[0, 1].set_ylabel('Female Bargaining Weight (η)')
            axes[0, 1].set_title('Bargaining Weight vs. Preference Difference')
            axes[0, 1].grid(True, alpha=0.3)
        
        # 3. 主要系数估计
        significant_vars = results_df[results_df['P_Value'] < 0.1].head(10)
        if len(significant_vars) > 0:
            y_pos = np.arange(len(significant_vars))
            axes[1, 0].barh(y_pos, significant_vars['Coefficient'])
            axes[1, 0].set_yticks(y_pos)
            axes[1, 0].set_yticklabels(significant_vars['Variable'])
            axes[1, 0].set_xlabel('Coefficient')
            axes[1, 0].set_title('Significant Covariate Effects (p<0.1)')
            axes[1, 0].grid(True, alpha=0.3)
        
        # 4. 时间趋势 (如果有年份数据)
        if 'SURVEY_YEAR' in df.columns and len(eta_all) > 0:
            df['ETA'] = eta_all
            year_eta = df.groupby('SURVEY_YEAR')['ETA'].mean()
            axes[1, 1].plot(year_eta.index, year_eta.values, marker='o', linewidth=2)
            axes[1, 1].set_xlabel('Survey Year')
            axes[1, 1].set_ylabel('Average Female Bargaining Weight')
            axes[1, 1].set_title('Bargaining Power Over Time')
            axes[1, 1].grid(True, alpha=0.3)
        else:
            axes[1, 1].text(0.5, 0.5, 'No time trend data available', 
                            ha='center', va='center', transform=axes[1, 1].transAxes)
            axes[1, 1].set_title('Bargaining Power Over Time')
        
        plt.tight_layout()
        
        # 保存图表
        output_dir = None
        for base_path in ["../temp/data_cleaning", "temp/data_cleaning"]:
            if os.path.exists(base_path):
                output_dir = base_path
                break
        
        if output_dir is None:
            output_dir = "temp/data_cleaning"
        
        plot_path = os.path.join(output_dir, "bargaining_power_analysis.png")
        plt.savefig(plot_path, dpi=300, bbox_inches='tight')
        print(f"✓ 可视化图表已保存: {plot_path}")
        
        plt.show()
        
    except ImportError:
        print("⚠ matplotlib未安装，跳过可视化")
    except Exception as e:
        print(f"⚠ 可视化创建失败: {e}")

# =============================================================================
# 第六部分：结果保存和报告
# =============================================================================

def save_estimation_results(results_df, eta_all, df, log_likelihood=None):
    """
    保存估计结果
    """
    print("\n" + "="*60)
    print("保存估计结果")
    print("="*60)
    
    # 自动检测输出目录
    output_dir = None
    for base_path in ["../temp/data_cleaning", "temp/data_cleaning"]:
        if os.path.exists(base_path):
            output_dir = base_path
            break
    
    if output_dir is None:
        output_dir = "temp/data_cleaning"
    
    # 1. 保存系数估计结果
    results_path = os.path.join(output_dir, "bargaining_power_results.csv")
    results_df.to_csv(results_path, index=False)
    print(f"✓ 系数估计结果已保存: {results_path}")
    
    # 2. 保存议价权重数据
    if len(eta_all) > 0:
        df_with_eta = df.copy()
        df_with_eta['BARGAINING_WEIGHT'] = eta_all
        
        # 动态选择可用的列
        available_cols = ['BARGAINING_WEIGHT']
        
        # 检查是否有CASEID列
        caseid_cols = [col for col in df.columns if 'CASEID' in col.upper() or 'CASE' in col.upper()]
        if caseid_cols:
            available_cols.insert(0, caseid_cols[0])
        
        # 检查是否有年份相关列
        year_cols = [col for col in df.columns if any(x in col.upper() for x in ['YEAR', 'SURVEY', 'DATE'])]
        if year_cols:
            available_cols.insert(1, year_cols[0])
        
        # 添加一些关键变量用于识别
        key_vars = ['gw_f', 'gw_m', 'birth', 'HIEDUC', 'POVERTY']
        for var in key_vars:
            if var in df.columns and var not in available_cols:
                available_cols.append(var)
        
        eta_path = os.path.join(output_dir, "bargaining_weights.csv")
        df_with_eta[available_cols].to_csv(eta_path, index=False)
        print(f"✓ 议价权重数据已保存: {eta_path}")
        print(f"  包含列: {available_cols}")
    else:
        print("⚠ 无法保存议价权重数据，权重计算失败")
    
    # 3. 生成LaTeX结果表
    latex_path = os.path.join(output_dir, "bargaining_power_results.tex")
    generate_latex_results_table(results_df, latex_path)
    print(f"✓ LaTeX结果表已保存: {latex_path}")
    
    # 4. 生成估计摘要
    summary_path = os.path.join(output_dir, "bargaining_estimation_summary.txt")
    generate_estimation_summary(results_df, eta_all, df, summary_path, log_likelihood=log_likelihood)
    print(f"✓ 估计摘要已保存: {summary_path}")

def generate_latex_results_table(results_df, file_path):
    """
    生成LaTeX格式的结果表
    """
    latex_content = []
    latex_content.append("\\begin{table}[htbp]")
    latex_content.append("\\centering")
    latex_content.append("\\caption{Female Bargaining Power Estimation Results}")
    latex_content.append("\\label{tab:bargaining_results}")
    latex_content.append("\\begin{tabular}{lcccc}")
    latex_content.append("\\hline")
    latex_content.append("Variable & Coefficient & Std. Error & Z-statistic & P-value \\\\")
    latex_content.append("\\hline")
    
    for _, row in results_df.iterrows():
        var = row['Variable'].replace('_', '\\_')
        coef = f"{row['Coefficient']:.4f}"
        se = f"{row['Std_Error']:.4f}"
        z_stat = f"{row['Z_Stat']:.3f}"
        p_val = f"{row['P_Value']:.3f}"
        
        latex_content.append(f"{var} & {coef} & {se} & {z_stat} & {p_val} \\\\")
    
    latex_content.append("\\hline")
    latex_content.append("\\end{tabular}")
    latex_content.append("\\end{table}")
    
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write('\n'.join(latex_content))

def generate_estimation_summary(results_df, eta_all, df, file_path, log_likelihood=None):
    """
    生成估计摘要报告
    """
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write("NSFG女性生育议价能力估计摘要\n")
        f.write("="*50 + "\n")
        f.write(f"估计时间: {pd.Timestamp.now()}\n")
        f.write(f"样本量: {len(df):,}\n")
        f.write(f"协变量数量: {len(results_df):,}\n\n")
        
        f.write("主要结果:\n")
        if len(eta_all) > 0:
            f.write(f"  平均女性议价权重: {eta_all.mean():.3f}\n")
            f.write(f"  议价权重标准差: {eta_all.std():.3f}\n")
            f.write(f"  议价权重范围: [{eta_all.min():.3f}, {eta_all.max():.3f}]\n\n")
        else:
            f.write(f"  议价权重计算失败\n\n")
        
        f.write("显著协变量 (p<0.05):\n")
        significant_vars = results_df[results_df['P_Value'] < 0.05]
        for _, row in significant_vars.iterrows():
            f.write(f"  {row['Variable']}: {row['Coefficient']:.4f} (p={row['P_Value']:.3f})\n")
        
        f.write(f"\n模型拟合:\n")
        if log_likelihood is not None:
            f.write(f"  对数似然: {log_likelihood:.4f}\n")
        

# =============================================================================
# 主函数
# =============================================================================

def main():
    """
    主函数：执行完整的NSFG生育议价能力分析
    """
    print("\nNSFG生育议价能力分析脚本 (合并版本)")
    print("="*60)
    
    # 步骤1：加载和准备数据
    df_model, Z = load_and_prepare_data()
    
    # 步骤2：总体估计
    print("\n总体估计：")
    result = estimate_bargaining_power(df_model, Z)
    
    if result is not None:
        eta_const = expit(np.dot(Z.values.astype(float), result.x)).mean()
        print(f"收敛状态: {result.success}")
        print(f"估计的η: {eta_const:.4f}")
        print(f"对数似然: {-result.fun:.1f}")
        
        # 创建增强的结果表
        covariate_names = Z.columns.tolist()
        results_df = create_enhanced_results_table(result, Z, covariate_names, df_model)
        
        if results_df is not None:
            print("\n详细估计结果:")
            print(results_df.round(4))
            
            # 计算议价权重
            eta_all = expit(np.dot(Z.values.astype(float), result.x))
            
            # 分析结果
            analyze_bargaining_results(results_df, df_model, result.x, Z)
            
            # 创建可视化
            create_bargaining_visualizations(df_model, eta_all, results_df)
            
            # 保存结果（传入对数似然用于摘要）
            save_estimation_results(results_df, eta_all, df_model, log_likelihood=-result.fun)
        
    else:
        print("估计失败")
        return
    
    # 步骤3：分析生育意愿分歧
    df_model = analyze_divergent_preferences(df_model)
    
    # 步骤4：生成LaTeX表格
    generate_latex_tables(df_model)
    
    print("\n分析完成！")

if __name__ == "__main__":
    main()
