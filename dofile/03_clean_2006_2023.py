"""
NSFG数据清理脚本 (2006-2023)
功能：
1. 读取02_pool_2006_2023.py合并后的数据
2. 清理和标准化变量
3. 处理缺失值和异常值
4. 创建分析所需的新变量
5. 保存清理后的数据
"""

import pandas as pd
import numpy as np
import os
from pathlib import Path
import warnings
warnings.filterwarnings('ignore')

# =============================================================================
# 第一部分：数据读取和基本信息检查
# =============================================================================

def load_pooled_data():
    """
    读取02_pool_2006_2023.py合并后的数据
    """
    print("="*60)
    print("读取合并后的NSFG数据...")
    print("="*60)
    
    # 尝试读取不同格式的数据文件
    # 自动检测路径：如果在dofile目录中运行，使用../temp/data_cleaning/
    # 如果在项目根目录运行，使用temp/data_cleaning/
    base_paths = ["../temp/data_cleaning/", "temp/data_cleaning/"]
    
    data_files = []
    for base_path in base_paths:
        test_files = [
            f"{base_path}nsfg_pooled_preg_standardized.csv",
            f"{base_path}nsfg_pooled_preg_standardized.dta",
            f"{base_path}nsfg_pooled_preg.csv",
            f"{base_path}nsfg_pooled_preg.dta"
        ]
        # 检查任意候选文件是否存在
        existing = [p for p in test_files if os.path.exists(p)]
        if existing:
            data_files = test_files
            try:
                found_name = os.path.basename(existing[0])
                print(f"使用路径: {base_path}（检测到 {found_name}）")
            except Exception:
                print(f"使用路径: {base_path}")
            break
    
    df = None
    for file_path in data_files:
        if os.path.exists(file_path):
            try:
                if file_path.endswith('.csv'):
                    df = pd.read_csv(file_path)
                elif file_path.endswith('.dta'):
                    df = pd.read_stata(file_path)
                
                print(f"✓ 成功读取: {file_path}")
                print(f"  数据形状: {df.shape[0]:,} 行 × {df.shape[1]} 列")
                break
            except Exception as e:
                print(f"✗ 无法读取 {file_path}: {e}")
                continue
    
    if df is None:
        print("✗ 无法找到或读取任何数据文件")
        return None
    
    return df

def inspect_data_structure(df):
    """
    检查数据结构基本信息
    """
    print("\n" + "="*60)
    print("数据结构检查")
    print("="*60)
    
    print(f"数据集形状: {df.shape[0]:,} 行 × {df.shape[1]} 列")
    print(f"内存使用: {df.memory_usage(deep=True).sum() / 1024**2:.2f} MB")
    
    # 检查年份分布
    if 'YEAR_RANGE' in df.columns:
        print(f"\n年份分布:")
        year_counts = df['YEAR_RANGE'].value_counts().sort_index()
        for year, count in year_counts.items():
            print(f"  {year}: {count:,} 条记录 ({count/len(df)*100:.1f}%)")
    
    if 'SURVEY_YEAR' in df.columns:
        print(f"\n调查年份分布:")
        survey_year_counts = df['SURVEY_YEAR'].value_counts().sort_index()
        for year, count in survey_year_counts.items():
            print(f"  {year}: {count:,} 条记录 ({count/len(df)*100:.1f}%)")
    
    # 检查关键变量
    key_vars = ['CASEID', 'WANTRESP_STD', 'WANTPART_STD', 'BIRTHINTENTION_R', 'BIRTHINTENTION_P']
    print(f"\n关键变量检查:")
    for var in key_vars:
        if var in df.columns:
            missing_pct = df[var].isna().sum() / len(df) * 100
            unique_vals = df[var].dropna().nunique()
            print(f"  {var}: {missing_pct:.1f}% 缺失, {unique_vals} 个唯一值")
        else:
            print(f"  {var}: 变量不存在")

def identify_variable_patterns(df):
    """
    识别变量模式和类型
    """
    print("\n" + "="*60)
    print("变量模式识别")
    print("="*60)
    
    # 按变量类型分组
    numeric_vars = []
    categorical_vars = []
    date_vars = []
    id_vars = []
    other_vars = []
    
    for col in df.columns:
        if df[col].dtype in ['int64', 'float64']:
            numeric_vars.append(col)
        elif df[col].dtype == 'object':
            # 检查是否为日期变量
            if any(keyword in col.upper() for keyword in ['DATE', 'YEAR', 'MONTH', 'DAY']):
                date_vars.append(col)
            # 检查是否为ID变量
            elif any(keyword in col.upper() for keyword in ['ID', 'CASEID', 'RESPID']):
                id_vars.append(col)
            else:
                categorical_vars.append(col)
        else:
            other_vars.append(col)
    
    print(f"数值变量 ({len(numeric_vars)}): {numeric_vars[:10]}{'...' if len(numeric_vars) > 10 else ''}")
    print(f"分类变量 ({len(categorical_vars)}): {categorical_vars[:10]}{'...' if len(categorical_vars) > 10 else ''}")
    print(f"日期变量 ({len(date_vars)}): {date_vars}")
    print(f"ID变量 ({len(id_vars)}): {id_vars}")
    print(f"其他变量 ({len(other_vars)}): {other_vars}")

# =============================================================================
# 第二部分：变量清理和标准化
# =============================================================================

def clean_demographic_variables(df):
    """
    清理人口统计学变量
    """
    print("\n" + "="*60)
    print("清理人口统计学变量")
    print("="*60)
    
    df_clean = df.copy()
    
    # 年龄变量清理 - 只检查不修改
    age_vars = [col for col in df.columns if 'AGE' in col.upper()]
    print(f"找到年龄相关变量: {age_vars}")
    
    for age_var in age_vars:
        if age_var in df_clean.columns:
            # 只检查异常值但不修改
            valid_mask = df_clean[age_var].between(0, 100) | df_clean[age_var].isna()
            invalid_count = (~valid_mask).sum()
            
            if invalid_count > 0:
                print(f"  {age_var}: 发现 {invalid_count} 个异常年龄值 (范围: {df_clean[age_var].min():.1f} - {df_clean[age_var].max():.1f})")
                print(f"    异常值示例: {df_clean[~valid_mask][age_var].head().tolist()}")
                print(f"    保留原始值，不进行修改")
    
    # 教育变量清理
    education_vars = [col for col in df.columns if any(x in col.upper() for x in ['EDUC', 'SCHOOL', 'GRADE'])]
    print(f"找到教育相关变量: {education_vars}")
    
    # 收入变量清理
    income_vars = [col for col in df.columns if any(x in col.upper() for x in ['INCOME', 'SALARY', 'WAGE', 'EARN'])]
    print(f"找到收入相关变量: {income_vars}")
    
    # 婚姻状态变量清理
    marital_vars = [col for col in df.columns if any(x in col.upper() for x in ['MARITAL', 'MARRIED', 'STATUS'])]
    print(f"找到婚姻状态相关变量: {marital_vars}")
    
    return df_clean

def clean_pregnancy_variables(df):
    """
    清理妊娠相关变量
    """
    print("\n" + "="*60)
    print("清理妊娠相关变量")
    print("="*60)
    
    df_clean = df.copy()
    
    # 妊娠顺序变量
    preg_order_vars = [col for col in df.columns if any(x in col.upper() for x in ['PREGORD', 'ORDER', 'SEQUENCE'])]
    print(f"找到妊娠顺序变量: {preg_order_vars}")
    
    for var in preg_order_vars:
        if var in df_clean.columns:
            # 只检查异常值但不修改
            valid_mask = df_clean[var].between(1, 20) | df_clean[var].isna()  # 假设最大20次妊娠
            invalid_count = (~valid_mask).sum()
            
            if invalid_count > 0:
                print(f"  {var}: 发现 {invalid_count} 个异常值 (范围: {df_clean[var].min():.1f} - {df_clean[var].max():.1f})")
                print(f"    异常值示例: {df_clean[~valid_mask][var].head().tolist()}")
                print(f"    保留原始值，不进行修改")
    
    # 妊娠结果变量
    outcome_vars = [col for col in df.columns if any(x in col.upper() for x in ['OUTCOME', 'RESULT', 'BIRTH', 'ABORT', 'MISCAR'])]
    print(f"找到妊娠结果变量: {outcome_vars}")
    
    # 妊娠周数变量
    gestation_vars = [col for col in df.columns if any(x in col.upper() for x in ['GEST', 'WEEK', 'MONTH'])]
    print(f"找到妊娠周数变量: {gestation_vars}")
    
    for var in gestation_vars:
        if var in df_clean.columns:
            # 只检查异常妊娠周数但不修改
            valid_mask = df_clean[var].between(20, 45) | df_clean[var].isna()
            invalid_count = (~valid_mask).sum()
            
            if invalid_count > 0:
                print(f"  {var}: 发现 {invalid_count} 个异常妊娠周数 (范围: {df_clean[var].min():.1f} - {df_clean[var].max():.1f})")
                print(f"    异常值示例: {df_clean[~valid_mask][var].head().tolist()}")
                print(f"    保留原始值，不进行修改")
    
    return df_clean

def clean_wantedness_variables(df):
    """
    清理和验证wantedness变量
    """
    print("\n" + "="*60)
    print("清理WANTEDNESS变量")
    print("="*60)
    
    df_clean = df.copy()
    
    # 检查标准化后的wantedness变量
    wantedness_vars = ['WANTRESP_STD', 'WANTPART_STD', 'BIRTHINTENTION_R', 'BIRTHINTENTION_P']
    
    for var in wantedness_vars:
        if var in df_clean.columns:
            # 检查值是否在1-6范围内
            original_count = len(df_clean)
            valid_mask = df_clean[var].between(1, 6) | df_clean[var].isna()
            df_clean = df_clean[valid_mask]
            removed_count = original_count - len(df_clean)
            
            if removed_count > 0:
                print(f"  {var}: 移除了 {removed_count} 个超出1-6范围的值")
            
            # 显示分布
            dist = df_clean[var].value_counts().sort_index()
            print(f"  {var} 分布:")
            for val, count in dist.items():
                if not pd.isna(val):
                    label = {1: "Later/overdue", 2: "Right time", 3: "Too soon", 
                            4: "Didn't care", 5: "Unwanted", 6: "Don't know"}.get(val, "Unknown")
                    print(f"    {int(val)}: {label:15} - {count:,} ({count/len(df_clean)*100:.1f}%)")
    
    return df_clean

def create_derived_variables(df):
    """
    创建派生变量
    """
    print("\n" + "="*60)
    print("创建派生变量")
    print("="*60)
    
    df_derived = df.copy()

    # 合并每年段的 outcome 列为一个统一变量 OUTCOME_MERGED
    # 排除已存在的 OUTCOME_MERGED，避免二次运行时被当作来源列覆盖
    outcome_year_vars = [
        col for col in df_derived.columns
        if col.upper().startswith("OUTCOME_") and col.upper() != "OUTCOME_MERGED"
    ]
    if outcome_year_vars:
        # 规范化：
        # - 转为数值
        # - 将 0 视为缺失
        # - 将两位编码（11/12/20/22等）取首位数字，映射到 1..6
        outcome_df = df_derived[outcome_year_vars].apply(pd.to_numeric, errors='coerce')
        outcome_df = outcome_df.replace(0, np.nan)
        # 两位编码压缩到首位（例如 11->1, 22->2, 33->3, 20->2 等）
        outcome_df = outcome_df.where(outcome_df < 10, np.floor_divide(outcome_df, 10))
        # 非 1..6 的值视为缺失
        outcome_df = outcome_df.where(outcome_df.isin([1, 2, 3, 4, 5, 6]))

        # 行内前向填充，取第一列的非缺失值
        merged = outcome_df.bfill(axis=1).iloc[:, 0]
        df_derived['OUTCOME_MERGED'] = pd.to_numeric(merged, errors='coerce')
        # 若仍有缺失，用 PRGOUTCOME 兜底（如果存在）
        if 'PRGOUTCOME' in df_derived.columns:
            prg_numeric = pd.to_numeric(df_derived['PRGOUTCOME'], errors='coerce')
            prg_numeric = prg_numeric.replace(0, np.nan)
            prg_numeric = prg_numeric.where(prg_numeric < 10, np.floor_divide(prg_numeric, 10))
            prg_numeric = prg_numeric.where(prg_numeric.isin([1, 2, 3, 4, 5, 6]))
            df_derived['OUTCOME_MERGED'] = df_derived['OUTCOME_MERGED'].fillna(prg_numeric)

        # 简要报告（不同时间段的编码差异：2006-2017 常见为 11/22；2017-2023 常见为 1-6）
        print("  创建了 OUTCOME_MERGED 统一变量")
        if 'YEAR_RANGE' in df_derived.columns:
            by_year = (
                df_derived[['YEAR_RANGE', 'OUTCOME_MERGED']]
                .dropna()
                .groupby('YEAR_RANGE')['OUTCOME_MERGED']
                .apply(lambda s: sorted(pd.Series(s.unique()).dropna().tolist())[:6])
            )
            for yr, vals in by_year.items():
                print(f"    {yr}: 值示例 {vals}")
    
    # 1. 创建wantedness分类变量
    if 'BIRTHINTENTION_R' in df_derived.columns:
        df_derived['WANTEDNESS_R'] = pd.cut(
            df_derived['BIRTHINTENTION_R'],
            bins=[0, 2, 3, 4, 6],
            labels=['Wanted', 'Mistimed', 'Unwanted', 'Unknown'],
            include_lowest=True
        )
        print("  创建了 WANTEDNESS_R 分类变量")
    
    if 'BIRTHINTENTION_P' in df_derived.columns:
        df_derived['WANTEDNESS_P'] = pd.cut(
            df_derived['BIRTHINTENTION_P'],
            bins=[0, 2, 3, 4, 6],
            labels=['Wanted', 'Mistimed', 'Unwanted', 'Unknown'],
            include_lowest=True
        )
        print("  创建了 WANTEDNESS_P 分类变量")
    
    # 2. 创建wantedness一致性变量
    if all(var in df_derived.columns for var in ['BIRTHINTENTION_R', 'BIRTHINTENTION_P']):
        # 只考虑双方都有意愿的情况
        both_have_intention = df_derived['BIRTHINTENTION_R'].notna() & df_derived['BIRTHINTENTION_P'].notna()
        
        df_derived['WANTEDNESS_AGREEMENT'] = np.nan
        df_derived.loc[both_have_intention, 'WANTEDNESS_AGREEMENT'] = (
            df_derived.loc[both_have_intention, 'BIRTHINTENTION_R'] == 
            df_derived.loc[both_have_intention, 'BIRTHINTENTION_P']
        )
        
        agreement_count = df_derived['WANTEDNESS_AGREEMENT'].sum()
        total_both = both_have_intention.sum()
        print(f"  创建了 WANTEDNESS_AGREEMENT 变量")
        print(f"    双方意愿一致: {agreement_count:,}/{total_both:,} ({agreement_count/total_both*100:.1f}%)")
    
    # 3. 创建时间趋势变量
    if 'SURVEY_YEAR' in df_derived.columns:
        df_derived['PERIOD'] = pd.cut(
            df_derived['SURVEY_YEAR'],
            bins=[2005, 2010, 2015, 2020, 2025],
            labels=['2006-2010', '2011-2015', '2016-2020', '2021-2025'],
            include_lowest=True
        )
        print("  创建了 PERIOD 时间周期变量")
    
    # 4. 创建年龄组变量
    age_vars = [col for col in df.columns if 'AGE' in col.upper() and 'RESP' in col.upper()]
    if age_vars:
        age_var = age_vars[0]  # 使用第一个找到的年龄变量
        df_derived['AGE_GROUP'] = pd.cut(
            df_derived[age_var],
            bins=[0, 20, 25, 30, 35, 40, 100],
            labels=['<20', '20-24', '25-29', '30-34', '35-39', '40+'],
            include_lowest=True
        )
        print(f"  创建了 AGE_GROUP 变量 (基于 {age_var})")
    
    return df_derived

def select_bargaining_variables(df):
    """
    选择bargaining分析所需的变量
    """
    print("\n" + "="*60)
    print("选择Bargaining分析变量")
    print("="*60)
    
    # 定义需要保留的变量
    vars_bargaining = [
        # Pregnancy intention & mismatch
        "WANTRESP", "WANTPART", "OLDWANTR", "OLDWANTP", "NEWWANTR",
        "TOOSOON", "TOOSOON_N", "TOOSOON_P", "LATERNUM", "LATERMY", "TIMINGOK",
        "FEELINPG", "TRYSCALE", "WANTSCAL", "WANTBOLD", "WANTBLD2", "PROBBABE",
        "CNFRMNO", "WTHPART1", "WTHPART2", "HPWNOLD", "TIMOKHP",

        # Contraceptive use
        "ANYUSINT", "EVUSEINT", "STOPDUSE", "WHYSTOPD",
        "WHATMETH01", "WHATMETH02", "WHATMETH03", "WHATMETH04",
        "RESNOUSE", "WHYPRG1", "WHYPRG2", "WHYPRG3",
        "WHYNOUSE1", "WHYNOUSE2", "WHYNOUSE3", "WHYNOUSE4",
        "WHYNOUSE5", "WHYNOUSE6", "WHYNOUSE7", "MAINOUSE",
        "WHYNOPG1", "WHYNOPG2",

        # Female characteristics
        "EDUCAT", "HIEDUC", "AGECON", "AGEPREG", "AGER",
        "RACE", "HISPANIC", "HISPRACE2",
        "FMARITAL", "RMARITAL", "PMARPREG", "PUBASSIS", "POVERTY",
        "LABORFOR", "CURR_INS", "METRO", "RELIGION",

        # Couple context
        "COHPBEG", "COHPEND", "FMARCON5", "RMARCON6",
        "FMAROUT5", "RMAROUT6", "PARENEND1", "PARENEND2", "PARENEND3"
    ]
    
    # 添加必要的ID和时间变量，以及标准化后的birthintention变量
    essential_vars = ["CASEID", "SURVEY_YEAR", "YEAR_RANGE", "FINALWGT30", "PRGOUTCOME", "OUTCOME_MERGED"]

    # 同时保留在 02_pool 中为每个年段生成的 outcome 列（例如 OUTCOME_2006_2010 等）
    outcome_year_vars = [col for col in df.columns if col.upper().startswith("OUTCOME_")]
    birthintention_vars = ["WANTRESP_STD", "WANTPART_STD", "BIRTHINTENTION_R", "BIRTHINTENTION_P"]
    all_vars = essential_vars + birthintention_vars + outcome_year_vars + vars_bargaining
    
    # 检查哪些变量存在
    existing_vars = [var for var in all_vars if var in df.columns]
    missing_vars = [var for var in all_vars if var not in df.columns]
    
    print(f"原始数据变量数: {len(df.columns)}")
    print(f"需要保留的变量数: {len(all_vars)}")
    if outcome_year_vars:
        print(f"  将保留年段 outcome 列: {sorted(outcome_year_vars)}")
    print(f"存在的变量数: {len(existing_vars)}")
    print(f"缺失的变量数: {len(missing_vars)}")
    
    if missing_vars:
        print(f"\n缺失的变量:")
        for var in missing_vars:
            print(f"  - {var}")
    
    # 选择存在的变量
    df_selected = df[existing_vars].copy()
    
    # 若存在重复列名，去重以避免后续按列布尔索引时报错
    if df_selected.columns.duplicated().any():
         dup_labels = df_selected.columns[df_selected.columns.duplicated()].tolist()
         print(f"\n检测到重复列名并将其去重: {sorted(set(dup_labels))}")
         df_selected = df_selected.loc[:, ~df_selected.columns.duplicated()].copy()
    
    print(f"\n最终保留的变量数: {len(df_selected.columns)}")
    print(f"最终数据形状: {df_selected.shape[0]:,} 行 × {df_selected.shape[1]} 列")
    
    return df_selected

# =============================================================================
# 第三部分：数据质量检查和报告
# =============================================================================

def check_data_quality(df):
    """
    检查数据质量
    """
    print("\n" + "="*60)
    print("数据质量检查")
    print("="*60)
    
    # 1. 缺失值检查
    print("缺失值统计:")
    missing_stats = df.isnull().sum()
    missing_pct = (missing_stats / len(df)) * 100
    
    high_missing_vars = missing_pct[missing_pct > 50].sort_values(ascending=False)
    if len(high_missing_vars) > 0:
        print(f"  高缺失率变量 (>50%):")
        for var, pct in high_missing_vars.items():
            print(f"    {var}: {pct:.1f}%")
    
    # 2. 重复值检查
    print(f"\n重复行检查:")
    duplicate_count = df.duplicated().sum()
    print(f"  重复行数: {duplicate_count:,} ({duplicate_count/len(df)*100:.2f}%)")
    
    # 3. 异常值检查
    print(f"\n异常值检查:")
    numeric_cols = df.select_dtypes(include=[np.number]).columns
    
    for col in numeric_cols[:10]:  # 只检查前10个数值变量
        if col in df.columns:
            Q1 = df[col].quantile(0.25)
            Q3 = df[col].quantile(0.75)
            IQR = Q3 - Q1
            lower_bound = Q1 - 1.5 * IQR
            upper_bound = Q3 + 1.5 * IQR
            
            outliers = df[(df[col] < lower_bound) | (df[col] > upper_bound)]
            outlier_count = len(outliers)
            
            if outlier_count > 0:
                print(f"  {col}: {outlier_count:,} 个异常值 ({outlier_count/len(df)*100:.1f}%)")

def generate_cleaning_report(df_original, df_cleaned):
    """
    生成清理报告
    """
    print("\n" + "="*60)
    print("数据清理报告")
    print("="*60)
    
    original_rows = len(df_original)
    cleaned_rows = len(df_cleaned)
    removed_rows = original_rows - cleaned_rows
    
    print(f"原始数据行数: {original_rows:,}")
    print(f"清理后数据行数: {cleaned_rows:,}")
    print(f"移除的行数: {removed_rows:,} ({removed_rows/original_rows*100:.1f}%)")
    
    # 检查关键变量的完整性
    key_vars = ['WANTRESP_STD', 'WANTPART_STD', 'BIRTHINTENTION_R', 'BIRTHINTENTION_P']
    
    print(f"\n关键变量完整性:")
    for var in key_vars:
        if var in df_cleaned.columns:
            valid_count = df_cleaned[var].notna().sum()
            print(f"  {var}: {valid_count:,}/{cleaned_rows:,} ({valid_count/cleaned_rows*100:.1f}%)")
    
    # 检查新创建的变量
    new_vars = [col for col in df_cleaned.columns if col not in df_original.columns]
    if new_vars:
        print(f"\n新创建的变量: {new_vars}")

# =============================================================================
# 第四部分：数据保存
# =============================================================================

def save_cleaned_data(df_cleaned):
    """
    保存清理后的数据
    """
    print("\n" + "="*60)
    print("保存清理后的数据")
    print("="*60)
    
    # 创建输出目录 - 自动检测路径
    output_dir = None
    for base_path in ["../temp/data_cleaning", "temp/data_cleaning"]:
        if os.path.exists(base_path):
            output_dir = base_path
            break
    
    if output_dir is None:
        output_dir = "temp/data_cleaning"  # 默认路径
    
    os.makedirs(output_dir, exist_ok=True)
    
    # 保存为CSV格式
    csv_path = os.path.join(output_dir, "nsfg_cleaned_preg.csv")
    df_cleaned.to_csv(csv_path, index=False)
    print(f"✓ CSV格式已保存: {csv_path}")
    
    # 尝试保存为Stata格式
    try:
        dta_path = os.path.join(output_dir, "nsfg_cleaned_preg.dta")
        
        # 处理可能导致Stata保存失败的列
        df_stata = df_cleaned.copy()
        
        # 转换object类型的列
        for col in df_stata.columns:
            if df_stata[col].dtype == 'object':
                try:
                    df_stata[col] = pd.to_numeric(df_stata[col], errors='coerce')
                except:
                    # 如果无法转换为数值，保持为字符串
                    df_stata[col] = df_stata[col].astype(str)
        
        df_stata.to_stata(dta_path, write_index=False)
        print(f"✓ Stata格式已保存: {dta_path}")
    except Exception as e:
        print(f"⚠ 无法保存为Stata格式: {e}")
    
    # 保存数据摘要
    summary_path = os.path.join(output_dir, "nsfg_cleaning_summary.txt")
    with open(summary_path, 'w', encoding='utf-8') as f:
        f.write("NSFG数据清理摘要\n")
        f.write("="*50 + "\n")
        f.write(f"清理后数据形状: {df_cleaned.shape[0]:,} 行 × {df_cleaned.shape[1]} 列\n")
        f.write(f"清理时间: {pd.Timestamp.now()}\n\n")
        
        # 写入关键变量统计
        key_vars = ['WANTRESP_STD', 'WANTPART_STD', 'BIRTHINTENTION_R', 'BIRTHINTENTION_P']
        f.write("关键变量统计:\n")
        for var in key_vars:
            if var in df_cleaned.columns:
                valid_count = df_cleaned[var].notna().sum()
                f.write(f"  {var}: {valid_count:,}/{len(df_cleaned):,} ({valid_count/len(df_cleaned)*100:.1f}%)\n")
    
    print(f"✓ 清理摘要已保存: {summary_path}")

def generate_latex_summary_table(df):
    """
    生成LaTeX格式的描述性统计表
    """
    print("\n" + "="*60)
    print("生成LaTeX描述性统计表")
    print("="*60)
    
    # 变量分类
    var_categories = {
        "ID & Time Variables": ["CASEID", "SURVEY_YEAR", "YEAR_RANGE", "FINALWGT30"],
        "Birthintention Variables": ["WANTRESP_STD", "WANTPART_STD", "BIRTHINTENTION_R", "BIRTHINTENTION_P"],
        "Pregnancy Intention & Mismatch": ["WANTRESP", "WANTPART", "OLDWANTR", "OLDWANTP", "NEWWANTR", 
                                          "TOOSOON", "TOOSOON_N", "TOOSOON_P", "LATERNUM", "LATERMY", "TIMINGOK",
                                          "FEELINPG", "TRYSCALE", "WANTSCAL", "WANTBOLD", "WANTBLD2", "PROBBABE",
                                          "CNFRMNO", "WTHPART1", "WTHPART2", "HPWNOLD", "TIMOKHP"],
        "Contraceptive Use": ["ANYUSINT", "EVUSEINT", "STOPDUSE", "WHYSTOPD",
                             "WHATMETH01", "WHATMETH02", "WHATMETH03", "WHATMETH04",
                             "RESNOUSE", "WHYPRG1", "WHYPRG2", "WHYPRG3",
                             "WHYNOUSE1", "WHYNOUSE2", "WHYNOUSE3", "WHYNOUSE4",
                             "WHYNOUSE5", "WHYNOUSE6", "WHYNOUSE7", "MAINOUSE",
                             "WHYNOPG1", "WHYNOPG2"],
        "Female Characteristics": ["EDUCAT", "HIEDUC", "AGECON", "AGEPREG", "AGER",
                                 "RACE", "HISPANIC", "HISPRACE2",
                                 "FMARITAL", "RMARITAL", "PMARPREG", "PUBASSIS", "POVERTY",
                                 "LABORFOR", "CURR_INS", "METRO", "RELIGION"],
        "Couple Context": ["COHPBEG", "COHPEND", "FMARCON5", "RMARCON6",
                          "FMAROUT5", "RMAROUT6", "PARENEND1", "PARENEND2", "PARENEND3"]
    }
    
    # 生成LaTeX表格 - 使用longtable支持跨页
    latex_content = []
    latex_content.append("\\begin{longtable}{lcccc}")
    latex_content.append("\\caption{Descriptive Statistics of NSFG Variables (2006-2023)}\\label{tab:descriptive_stats}")
    latex_content.append("\\hline")
    latex_content.append("Variable & N & Mean & Std. Dev. & Missing (\\%) \\\\")
    latex_content.append("\\hline")
    latex_content.append("\\endfirsthead")
    latex_content.append("\\multicolumn{5}{c}{\\tablename\\ \\thetable{} -- \\textit{continued from previous page}} \\\\")
    latex_content.append("\\hline")
    latex_content.append("Variable & N & Mean & Std. Dev. & Missing (\\%) \\\\")
    latex_content.append("\\hline")
    latex_content.append("\\endhead")
    latex_content.append("\\hline")
    latex_content.append("\\multicolumn{5}{r}{\\textit{continued on next page}} \\\\")
    latex_content.append("\\endfoot")
    latex_content.append("\\hline")
    latex_content.append("\\endlastfoot")
    
    total_vars = 0
    for category, vars_list in var_categories.items():
        # 添加分类标题 - 转义&字符
        category_escaped = category.replace("&", "\\&")
        latex_content.append(f"\\multicolumn{{5}}{{l}}{{\\textit{{{category_escaped}}}}} \\\\")
        
        for var in vars_list:
            if var in df.columns:
                total_vars += 1
                # 计算统计量
                valid_data = df[var].dropna()
                n_valid = len(valid_data)
                missing_pct = (len(df) - n_valid) / len(df) * 100
                
                if df[var].dtype in ['int64', 'float64'] and n_valid > 0:
                    mean_val = valid_data.mean()
                    std_val = valid_data.std()
                    
                    # 格式化数值
                    if abs(mean_val) >= 1000:
                        mean_str = f"{mean_val:,.1f}"
                    elif abs(mean_val) >= 1:
                        mean_str = f"{mean_val:.2f}"
                    else:
                        mean_str = f"{mean_val:.3f}"
                    
                    if abs(std_val) >= 1000:
                        std_str = f"{std_val:,.1f}"
                    elif abs(std_val) >= 1:
                        std_str = f"{std_val:.2f}"
                    else:
                        std_str = f"{std_val:.3f}"
                    
                    latex_content.append(f"{var} & {n_valid:,} & {mean_str} & {std_str} & {missing_pct:.1f} \\\\")
                else:
                    # 对于非数值变量，显示唯一值数量
                    unique_vals = valid_data.nunique()
                    latex_content.append(f"{var} & {n_valid:,} & {unique_vals} unique & - & {missing_pct:.1f} \\\\")
        
        latex_content.append("\\hline")
    
    latex_content.append("\\end{longtable}")
    
    # 保存LaTeX文件
    # 自动检测输出目录
    output_dir = None
    for base_path in ["../temp/data_cleaning", "temp/data_cleaning"]:
        if os.path.exists(base_path):
            output_dir = base_path
            break
    
    if output_dir is None:
        output_dir = "temp/data_cleaning"  # 默认路径
    
    latex_path = os.path.join(output_dir, "descriptive_stats.tex")
    with open(latex_path, 'w', encoding='utf-8') as f:
        f.write('\n'.join(latex_content))
    
    print(f"✓ LaTeX表格已保存: {latex_path}")
    print(f"  包含 {total_vars} 个变量的描述性统计")
    
    # 在控制台显示表格内容
    print("\n" + "="*60)
    print("LaTeX表格内容 (可直接复制粘贴):")
    print("="*60)
    print("注意：请在LaTeX文档的导言区添加：\\usepackage{longtable}")
    print("="*60)
    print('\n'.join(latex_content))

# =============================================================================
# 主函数
# =============================================================================

def main():
    """
    主函数：执行完整的数据清理流程
    """
    print("\nNSFG数据清理脚本 (2006-2023)")
    print("="*60)
    
    # 步骤1：读取数据
    print("\n步骤1：读取合并后的数据...")
    df_original = load_pooled_data()
    
    if df_original is None:
        print("✗ 无法读取数据，程序终止")
        return None
    
    # 步骤2：检查数据结构
    print("\n步骤2：检查数据结构...")
    inspect_data_structure(df_original)
    identify_variable_patterns(df_original)
    
    # 步骤3：清理变量
    print("\n步骤3：清理变量...")
    df_cleaned = clean_demographic_variables(df_original)
    df_cleaned = clean_pregnancy_variables(df_cleaned)
    df_cleaned = clean_wantedness_variables(df_cleaned)
    
    # 步骤4：创建派生变量
    print("\n步骤4：创建派生变量...")
    df_cleaned = create_derived_variables(df_cleaned)
    
    # 步骤5：选择bargaining分析变量
    print("\n步骤5：选择bargaining分析变量...")
    df_final = select_bargaining_variables(df_cleaned)
    
    # 步骤6：数据质量检查
    print("\n步骤6：数据质量检查...")
    check_data_quality(df_final)
    
    # 步骤7：生成清理报告
    print("\n步骤7：生成清理报告...")
    generate_cleaning_report(df_original, df_final)
    
    # 步骤8：保存清理后的数据
    print("\n步骤8：保存清理后的数据...")
    save_cleaned_data(df_final)
    
    # 步骤9：生成LaTeX描述性统计表
    print("\n步骤9：生成LaTeX描述性统计表...")
    generate_latex_summary_table(df_final)
    
    print("\n" + "="*60)
    print("✓ 数据清理完成!")
    print(f"最终数据集: {df_final.shape[0]:,} 行 × {df_final.shape[1]} 列")
    print("="*60)
    
    return df_final

if __name__ == "__main__":
    df_final = main() 