"""
NSFG数据清理和标准化脚本 (2006-2023)
功能：
1. 合并多个年份的NSFG妊娠数据
2. 检查WANTRESP和WANTPART变量的值分布
3. 标准化wantedness变量为统一的1-6编码
"""

import pandas as pd
import numpy as np
import os
import re
from pathlib import Path

# =============================================================================
# 第一部分：数据读取和解析函数
# =============================================================================

def parse_dct_file(dct_file):
    """
    解析Stata字典文件以提取变量信息
    修复：确保使用正确的编码读取.dct文件
    """
    variables = []
    
    # 尝试不同的编码读取字典文件
    encodings = ['utf-8', 'latin1', 'cp1252', 'iso-8859-1']
    content = None
    
    for encoding in encodings:
        try:
            with open(dct_file, 'r', encoding=encoding) as f:
                content = f.read()
                print(f"    Successfully read .dct file with {encoding} encoding")
                break
        except UnicodeDecodeError:
            continue
    
    if content is None:
        print(f"    ERROR: Could not read .dct file with any encoding")
        return variables
    
    # 提取变量定义
    pattern = r'_column\((\d+)\)\s+(\w+)\s+(\w+)\s+%(\d+)(\w)\s+"([^"]*)"'
    matches = re.findall(pattern, content)
    
    for match in matches:
        start_col = int(match[0])
        var_type = match[1]
        var_name = match[2]
        format_width = int(match[3])
        format_type = match[4]
        var_label = match[5]
        
        end_col = start_col + format_width - 1
        
        variables.append({
            'name': var_name,
            'start': start_col - 1,  # 转换为0索引
            'end': end_col,
            'width': format_width,
            'type': var_type,
            'format': f"%{format_width}{format_type}",
            'label': var_label
        })
    
    return variables

def read_fixed_width_file(data_file, dct_file):
    """
    读取固定宽度格式文件
    修复：分别处理.dct和.dat文件的编码
    """
    # 首先解析字典文件
    variables = parse_dct_file(dct_file)
    
    if not variables:
        print(f"    ERROR: Could not parse dictionary file: {dct_file}")
        return None
    
    print(f"    Found {len(variables)} variables in dictionary")
    
    # 尝试不同的编码读取数据文件
    encodings_to_try = ['latin1', 'cp1252', 'iso-8859-1', 'utf-8']
    
    for encoding in encodings_to_try:
        try:
            print(f"    Trying to read data file with {encoding} encoding...")
            
            # 读取数据文件
            with open(data_file, 'r', encoding=encoding) as f:
                lines = f.readlines()
            
            print(f"    Successfully read {len(lines)} lines with {encoding} encoding")
            
            # 创建数据列表
            data = []
            
            for line_num, line in enumerate(lines):
                if line_num % 1000 == 0:
                    print(f"      Processing line {line_num}/{len(lines)}...")
                
                row_data = {}
                
                for var in variables:
                    start = var['start']
                    end = var['end']
                    
                    # 从行中提取值
                    if start < len(line):
                        value = line[start:end+1].strip()
                        
                        # 转换为适当的类型
                        if var['type'] in ['byte', 'int', 'long']:
                            try:
                                row_data[var['name']] = int(value) if value else np.nan
                            except ValueError:
                                row_data[var['name']] = np.nan
                        elif var['type'] == 'float':
                            try:
                                row_data[var['name']] = float(value) if value else np.nan
                            except ValueError:
                                row_data[var['name']] = np.nan
                        else:
                            row_data[var['name']] = value
                    else:
                        row_data[var['name']] = np.nan
                
                data.append(row_data)
            
            # 创建DataFrame
            df = pd.DataFrame(data)
            
            print(f"    Successfully created DataFrame: {len(df)} rows, {len(df.columns)} columns")
            return df
            
        except UnicodeDecodeError as e:
            print(f"    Failed with {encoding} encoding: {e}")
            continue
        except Exception as e:
            print(f"    Unexpected error with {encoding} encoding: {e}")
            continue
    
    print("    ERROR: Could not read data file with any encoding")
    return None

def load_nsfg_data(year_range, data_type='preg'):
    """
    加载特定年份范围的NSFG数据
    """
    base_path = Path("data/NSFG")
    year_path = base_path / year_range
    
    if not year_path.exists():
        print(f"  WARNING: {year_path} does not exist")
        return None
    
    print(f"  Loading {year_range} {data_type} data...")
    
    # 不同年份的文件格式
    if year_range == "2006-2010":
        if data_type == 'preg':
            file_path = year_path / "2006_2010_FemPreg.dat"
            dict_file = year_path / "2006_2010_FemPregSetup.dct"
        
        if file_path.exists() and dict_file.exists():
            print(f"  Found files for {year_range}:")
            print(f"    Data: {file_path}")
            print(f"    Dict: {dict_file}")
            df = read_fixed_width_file(file_path, dict_file)
            return df
        else:
            print(f"  Missing files for {year_range}")
            return None
    
    elif year_range in ["2011-2013", "2013-2015", "2015-2017", "2017-2019"]:
        if data_type == 'preg':
            file_path = year_path / f"{year_range.replace('-', '_')}_FemPregData.dat"
            dict_file = year_path / f"{year_range.replace('-', '_')}_FemPregSetup.dct"
        
        if file_path.exists() and dict_file.exists():
            print(f"  Found files for {year_range}:")
            print(f"    Data: {file_path}")
            print(f"    Dict: {dict_file}")
            df = read_fixed_width_file(file_path, dict_file)
            return df
        else:
            print(f"  Missing files for {year_range}")
            return None
    
    elif year_range == "2022-2023":
        if data_type == 'preg':
            file_path = year_path / "NSFG-2022-2023-FemPregPUFData" / "NSFG_2022_2023_FemPregPUFData.csv"
        
        if file_path.exists():
            try:
                df = pd.read_csv(file_path)
                print(f"  Successfully loaded {year_range}: {len(df)} observations")
                return df
            except Exception as e:
                print(f"  Error reading {file_path}: {e}")
                return None
        else:
            print(f"  File not found: {file_path}")
            return None
    
    return None

def add_year_column(df, year_range):
    """添加年份列以识别调查年份，并将所有变量名转换为大写"""
    if df is not None:
        # 将所有变量名转换为大写
        df.columns = df.columns.str.upper()
        
        # 提取范围中的第一年
        start_year = int(year_range.split('-')[0])
        df['SURVEY_YEAR'] = start_year
        df['YEAR_RANGE'] = year_range
    return df

# =============================================================================
# 辅助函数：识别并保留每一年的 outcome 变量
# =============================================================================

def _clean_two_digit_codes(s: pd.Series) -> pd.Series:
    """
    兼容 11/22/33 这类两位编码：取首位数字；非字符串也会被安全处理。
    """
    try:
        s_str = s.astype(str).str.strip()
        return pd.to_numeric(s_str.str[0], errors='coerce')
    except Exception:
        return pd.to_numeric(s, errors='coerce')

def make_OUTCOME(df: pd.DataFrame) -> pd.DataFrame:
    """
    基于 NSFG 2006–10 规则，从 PRGOUTCOME 与 PREGEND1–3 / HOWENDDK 生成 OUTCOME（1..6）。
    返回一个包含新列 OUTCOME 的 DataFrame。
    映射摘要：
      - 6 = 当前怀孕 (prgoutcome == 3)
      - 1 = 活产 (prgoutcome == 1 或 PREGEND* ∈ {5,6})
      - 非活产 (prgoutcome == 2) 细分：
          2 = 人工流产 (任何一次提及 3)
          3 = 死胎     (任何一次提及 2)
          4 = 自然流产 (任何一次提及 1)
          5 = 异位妊娠 (任何一次提及 4)
    """
    if df is None or df.empty:
        return df

    # 变量名统一成小写映射，以便大小写不敏感访问
    cols = {c.lower(): c for c in df.columns}
    get = lambda name: df[cols[name]] if name in cols else pd.Series(pd.NA, index=df.index)

    prg = get('prgoutcome')
    pe1 = get('pregend1')
    pe2 = get('pregend2')
    pe3 = get('pregend3')
    howenddk = get('howenddk')

    # 清理两位编码（如 11/22/33）
    prg_clean = _clean_two_digit_codes(prg)
    pe1_clean = _clean_two_digit_codes(pe1)
    pe2_clean = _clean_two_digit_codes(pe2)
    pe3_clean = _clean_two_digit_codes(pe3)
    how_clean = _clean_two_digit_codes(howenddk)

    # 任一提及的结局代码（用于判断非活产细分）
    pe_any = pd.concat([pe1_clean, pe2_clean, pe3_clean], axis=1)

    # 初始化为缺失
    outcome_series = pd.Series(np.nan, index=df.index, dtype="float")

    # 6 = 当前怀孕
    outcome_series = outcome_series.mask(prg_clean == 3, 6)

    # 1 = 活产（若 prgoutcome=1，或 PREGEND* 出现 5/6）
    live_mask = (prg_clean == 1) | pe_any.isin([5, 6]).any(axis=1)
    outcome_series = outcome_series.mask(live_mask, 1)

    # 其余 prgoutcome=2（妊娠损失或堕胎）细分
    nonlive = (prg_clean == 2) & outcome_series.isna()

    # 2 = 人工流产（任何一次提及 3）
    outcome_series = outcome_series.mask(nonlive & pe_any.isin([3]).any(axis=1), 2)
    # 3 = 死胎（任何一次提及 2）
    outcome_series = outcome_series.mask(nonlive & pe_any.isin([2]).any(axis=1), 3)
    # 4 = 自然流产（任何一次提及 1）
    outcome_series = outcome_series.mask(nonlive & pe_any.isin([1]).any(axis=1), 4)
    # 5 = 异位妊娠（任何一次提及 4）
    outcome_series = outcome_series.mask(nonlive & pe_any.isin([4]).any(axis=1), 5)

    # 极少数：没有 PREGEND* 细分但 HOWENDDK=5 “some other way”
    # 如需强制设为某一类别，可在此处自定义；默认保留缺失。
    # 例如： outcome_series = outcome_series.fillna(np.where(nonlive & (how_clean == 5), 4, np.nan))

    # 转成整数类别（保留缺失）
    outcome_series = outcome_series.astype("Int64")

    df_out = df.copy()
    df_out["OUTCOME"] = outcome_series
    return df_out

def identify_outcome_column(df: pd.DataFrame) -> str:
    """
    在单年（或年段）数据集中识别妊娠结果变量列名。
    优先级顺序按常见命名排列，若同一关键词匹配到多个列，取非缺失最多者。
    返回找到的原始列名；若未找到，返回None。
    """
    if df is None or df.empty:
        return None

    priority_keywords = [
        'PRGOUTCOME', 'PRG_OUTCOME', 'PRGRESULT', 'PREGOUTCOME',
        'OUTCOME', 'RESULT', 'BIRTH_OUTCOME', 'BIRTHOUT', 'BIRTH',
        'ABORT', 'MISCAR'
    ]

    upper_name_map = {col: col.upper() for col in df.columns}

    # 逐个关键词匹配，找到最合适的一列
    for key in priority_keywords:
        matched = [col for col, u in upper_name_map.items() if key in u]
        if not matched:
            continue
        # 选择非缺失最多的列
        best_col = max(matched, key=lambda c: df[c].notna().sum())
        if df[best_col].notna().sum() > 0:
            return best_col

    return None

def add_yearly_outcome_column(df: pd.DataFrame, year_range: str) -> pd.DataFrame:
    """
    基于识别的 outcome 列，创建年段专属列，如 OUTCOME_2006_2010，保留该年段的 outcome 原始取值。
    其他年段的观察在该列中为缺失。
    """
    if df is None or df.empty:
        return df

    yr_key = year_range.replace('-', '_')
    new_col = f"OUTCOME_{yr_key}"

    # 始终尝试使用基于 PREGEND/PRGOUTCOME 的规则生成派生 OUTCOME（优先使用）
    df_generated = make_OUTCOME(df)
    generated_available = "OUTCOME" in df_generated.columns and df_generated["OUTCOME"].notna().sum() > 0

    if generated_available:
        # 优先使用规则生成的 OUTCOME，确保 2006–2017 使用细分规则（1..6）
        try:
            df[new_col] = pd.to_numeric(df_generated["OUTCOME"], errors='coerce')
        except Exception:
            df[new_col] = df_generated["OUTCOME"]
        non_missing = df[new_col].notna().sum()
        print(f"  ✓ 使用规则生成的 OUTCOME → 新增 {new_col} (非缺失: {non_missing})")
    else:
        # 回退：识别原始 outcome 列
        out_col = identify_outcome_column(df)
        if out_col is not None:
            try:
                df[new_col] = pd.to_numeric(df[out_col], errors='coerce')
            except Exception:
                df[new_col] = df[out_col]
            non_missing = df[new_col].notna().sum()
            print(f"  ✓ 识别到 outcome 列: {out_col} → 新增 {new_col} (非缺失: {non_missing})")
        else:
            print(f"  ⚠ 未识别到 outcome 列，跳过新增 {new_col}")

    return df

# =============================================================================
# 第二部分：数据合并函数
# =============================================================================

def merge_nsfg_data():
    """
    合并2006-2023年的NSFG妊娠数据
    """
    print("="*60)
    print("开始合并NSFG妊娠数据 (2006-2023)...")
    print("="*60)
    
    # 定义要合并的年份范围
    year_ranges = [
        "2006-2010",  # 固定宽度格式
        "2011-2013",  # 固定宽度格式
        "2013-2015",  # 固定宽度格式
        "2015-2017",  # 固定宽度格式
        "2017-2019",  # 固定宽度格式
        "2022-2023"   # CSV格式
    ]
    
    pooled_data = []
    
    for year_range in year_ranges:
        print(f"\n处理 {year_range}...")
        print("-"*40)
        
        # 加载妊娠数据
        preg_data = load_nsfg_data(year_range, 'preg')
        
        if preg_data is not None:
            # 添加年份信息
            preg_data = add_year_column(preg_data, year_range)
            # 为该年段创建 outcome 专属列
            preg_data = add_yearly_outcome_column(preg_data, year_range)
            
            pooled_data.append(preg_data)
            print(f"  ✓ 成功添加 {len(preg_data)} 条观察记录")
            
            # 显示一些关键变量信息
            key_vars = ['CASEID', 'WANTRESP', 'WANTPART']
            available_vars = [v for v in key_vars if v in preg_data.columns]
            if available_vars:
                print(f"  关键变量: {available_vars}")
        else:
            print(f"  ✗ 无法加载 {year_range} 的数据")
    
    if pooled_data:
        print("\n" + "="*60)
        print("合并所有数据...")
        
        # 合并所有数据
        final_pooled = pd.concat(pooled_data, ignore_index=True)
        
        print(f"\n✓ 成功合并数据:")
        print(f"  总观察数: {len(final_pooled):,}")
        print(f"  总变量数: {len(final_pooled.columns)}")
        print(f"  包含年份: {sorted(final_pooled['YEAR_RANGE'].unique())}")
        
        # 显示每年的样本量
        print(f"\n各年份样本量:")
        for year in sorted(final_pooled['SURVEY_YEAR'].unique()):
            count = len(final_pooled[final_pooled['SURVEY_YEAR'] == year])
            year_range = final_pooled[final_pooled['SURVEY_YEAR'] == year]['YEAR_RANGE'].iloc[0]
            print(f"  {year_range}: {count:,} 条记录")
        
        # 保存合并后的数据
        output_dir = "temp/data_cleaning"
        os.makedirs(output_dir, exist_ok=True)
        
        # 保存为CSV（更通用）
        csv_path = os.path.join(output_dir, "nsfg_pooled_preg.csv")
        final_pooled.to_csv(csv_path, index=False)
        print(f"\n✓ 数据已保存至: {csv_path}")
        
        # 尝试保存为Stata格式
        try:
            dta_path = os.path.join(output_dir, "nsfg_pooled_preg.dta")
            # 清理可能导致Stata保存失败的列
            final_pooled_stata = final_pooled.copy()
            for col in final_pooled_stata.columns:
                if final_pooled_stata[col].dtype == 'object':
                    try:
                        final_pooled_stata[col] = pd.to_numeric(final_pooled_stata[col], errors='coerce')
                    except:
                        final_pooled_stata[col] = final_pooled_stata[col].astype(str)
            
            final_pooled_stata.to_stata(dta_path, write_index=False)
            print(f"✓ 数据已保存至: {dta_path}")
        except Exception as e:
            print(f"⚠ 无法保存为Stata格式: {e}")
        
        return final_pooled
    else:
        print("\n✗ 没有成功加载任何数据")
        return None

# =============================================================================
# 第三部分：变量检查函数
# =============================================================================

def inspect_wantedness_variables(df):
    """
    检查WANTRESP、WANTPART、OLDWANTR、OLDWANTP变量的值分布
    """
    print("\n" + "="*60)
    print("检查WANTEDNESS变量的值分布")
    print("="*60)
    
    # 检查每个年份的变量
    for year in df['YEAR_RANGE'].unique():
        year_data = df[df['YEAR_RANGE'] == year]
        
        # 查找WANTRESP相关的列
        wantresp_cols = [col for col in year_data.columns if 'WANTRESP' in col.upper()]
        
        print(f"\n{year}年的WANTRESP变量:")
        for col in wantresp_cols:
            unique_vals = year_data[col].dropna().unique()
            total_obs = len(year_data)
            non_missing = year_data[col].notna().sum()
            missing_rate = (total_obs - non_missing) / total_obs * 100
            if len(unique_vals) > 0:
                print(f"  {col}: {sorted(unique_vals)[:10]}... (缺失率: {missing_rate:.1f}%)")
        
        # 查找WANTPART相关的列
        wantpart_cols = [col for col in year_data.columns if 'WANTPART' in col.upper()]
        
        print(f"\n{year}年的WANTPART变量:")
        if wantpart_cols:
            for col in wantpart_cols:
                unique_vals = year_data[col].dropna().unique()
                total_obs = len(year_data)
                non_missing = year_data[col].notna().sum()
                missing_rate = (total_obs - non_missing) / total_obs * 100
                print(f"  {col}: {sorted(unique_vals)[:10]}... (缺失率: {missing_rate:.1f}%)")
        else:
            print(f"  未找到WANTPART相关变量")
        
        # 查找OLDWANTR相关的列
        oldwantr_cols = [col for col in year_data.columns if 'OLDWANTR' in col.upper()]
        
        print(f"\n{year}年的OLDWANTR变量:")
        if oldwantr_cols:
            for col in oldwantr_cols:
                unique_vals = year_data[col].dropna().unique()
                total_obs = len(year_data)
                non_missing = year_data[col].notna().sum()
                missing_rate = (total_obs - non_missing) / total_obs * 100
                print(f"  {col}: {sorted(unique_vals)[:10]}... (缺失率: {missing_rate:.1f}%)")
        else:
            print(f"  未找到OLDWANTR相关变量")
        
        # 查找OLDWANTP相关的列
        oldwantp_cols = [col for col in year_data.columns if 'OLDWANTP' in col.upper()]
        
        print(f"\n{year}年的OLDWANTP变量:")
        if oldwantp_cols:
            for col in oldwantp_cols:
                unique_vals = year_data[col].dropna().unique()
                total_obs = len(year_data)
                non_missing = year_data[col].notna().sum()
                missing_rate = (total_obs - non_missing) / total_obs * 100
                print(f"  {col}: {sorted(unique_vals)[:10]}... (缺失率: {missing_rate:.1f}%)")
        else:
            print(f"  未找到OLDWANTP相关变量")
        
        # 检查是否有其他可能的partner wantedness变量
        partner_cols = [col for col in year_data.columns if any(x in col.upper() for x in ['PARTNER', 'FATHER', 'MALE', 'HUSBAND'])]
        if partner_cols:
            print(f"\n{year}年可能的伴侣相关变量:")
            for col in partner_cols:
                unique_vals = year_data[col].dropna().unique()
                total_obs = len(year_data)
                non_missing = year_data[col].notna().sum()
                missing_rate = (total_obs - non_missing) / total_obs * 100
                print(f"  {col}: {sorted(unique_vals)[:5]}... (缺失率: {missing_rate:.1f}%)")

# =============================================================================
# 第四部分：变量标准化函数
# =============================================================================

def standardize_wantedness_variables(df):
    """
    标准化WANTEDNESS变量并创建新的birthintention变量
    
    映射规则：
    11-16 → 1 (Later, overdue)
    21-26 → 2 (Right time)
    31-36 → 3 (Too soon, mistimed)
    41-46 → 4 (Didn't care, indifferent)
    51-56 → 5 (Unwanted)
    61-66 → 6 (Don't know, not sure)
    """
    
    # 创建映射字典
    mapping_11_66_to_1_6 = {
        # Later, overdue
        11: 1, 12: 1, 13: 1, 14: 1, 15: 1, 16: 1,
        # Right time
        21: 2, 22: 2, 23: 2, 24: 2, 25: 2, 26: 2,
        # Too soon, mistimed
        31: 3, 32: 3, 33: 3, 34: 3, 35: 3, 36: 3,
        # Didn't care, indifferent
        41: 4, 42: 4, 43: 4, 44: 4, 45: 4, 46: 4,
        # Unwanted
        51: 5, 52: 5, 53: 5, 54: 5, 55: 5, 56: 5,
        # Don't know, not sure
        61: 6, 62: 6, 63: 6, 64: 6, 65: 6, 66: 6
    }
    
    # 1-6已经是标准编码，创建直接映射
    mapping_1_6_to_1_6 = {
        1: 1, 2: 2, 3: 3, 4: 4, 5: 5, 6: 6
    }
    
    # 复制dataframe以避免修改原始数据
    df_std = df.copy()
    
    # 创建新的标准化列
    df_std['WANTRESP_STD'] = np.nan
    df_std['WANTPART_STD'] = np.nan
    df_std['BIRTHINTENTION_R'] = np.nan  # 受访者意愿
    df_std['BIRTHINTENTION_P'] = np.nan  # 伴侣意愿
    
    print("开始标准化WANTEDNESS变量并创建BIRTHINTENTION变量...")
    print("="*60)
    
    # 处理每个年份的数据
    for year_range in df_std['YEAR_RANGE'].unique():
        if pd.isna(year_range):
            continue
            
        print(f"\n处理 {year_range} 年数据...")
        year_mask = df_std['YEAR_RANGE'] == year_range
        
        # 处理受访者意愿 (WANTRESP/OLDWANTR)
        # 查找该年份中存在的WANTRESP相关列
        wantresp_cols = [col for col in df_std.columns if 'WANTRESP' in col.upper() and '_I' not in col.upper() and '_STD' not in col.upper()]
        
        for col in wantresp_cols:
            if df_std.loc[year_mask, col].notna().any():
                unique_vals = df_std.loc[year_mask, col].dropna().unique()
                print(f"  {col} 原始值范围: {sorted(unique_vals)[:5]}...")
                
                # 判断使用哪种映射
                if any(val > 10 for val in unique_vals):
                    # 使用11-66映射
                    df_std.loc[year_mask, 'WANTRESP_STD'] = df_std.loc[year_mask, col].map(mapping_11_66_to_1_6)
                    df_std.loc[year_mask, 'BIRTHINTENTION_R'] = df_std.loc[year_mask, col].map(mapping_11_66_to_1_6)
                    print(f"    → 应用11-66到1-6映射")
                else:
                    # 使用1-6映射
                    df_std.loc[year_mask, 'WANTRESP_STD'] = df_std.loc[year_mask, col].map(mapping_1_6_to_1_6)
                    df_std.loc[year_mask, 'BIRTHINTENTION_R'] = df_std.loc[year_mask, col].map(mapping_1_6_to_1_6)
                    print(f"    → 应用1-6到1-6映射")
                
                # 验证映射结果
                std_vals = df_std.loc[year_mask, 'WANTRESP_STD'].dropna().unique()
                print(f"    标准化后值: {sorted(std_vals)}")
                break  # 只使用第一个找到的WANTRESP列
        
        # 处理WANTPART (保持原始逻辑)
        wantpart_cols = [col for col in df_std.columns if 'WANTPART' in col.upper() and '_I' not in col.upper() and '_STD' not in col.upper()]
        
        for col in wantpart_cols:
            if df_std.loc[year_mask, col].notna().any():
                unique_vals = df_std.loc[year_mask, col].dropna().unique()
                print(f"  {col} 原始值范围: {sorted(unique_vals)[:5]}...")
                
                # 判断使用哪种映射
                if any(val > 10 for val in unique_vals):
                    # 使用11-66映射
                    df_std.loc[year_mask, 'WANTPART_STD'] = df_std.loc[year_mask, col].map(mapping_11_66_to_1_6)
                    print(f"    → 应用11-66到1-6映射")
                else:
                    # 使用1-6映射
                    df_std.loc[year_mask, 'WANTPART_STD'] = df_std.loc[year_mask, col].map(mapping_1_6_to_1_6)
                    print(f"    → 应用1-6到1-6映射")
                
                # 验证映射结果
                std_vals = df_std.loc[year_mask, 'WANTPART_STD'].dropna().unique()
                print(f"    标准化后值: {sorted(std_vals)}")
                break  # 只使用第一个找到的WANTPART列
        
        # 处理BIRTHINTENTION_P (使用改进策略)
        if year_range in ["2006-2010", "2011-2013", "2013-2015", "2015-2017", "2017-2019"]:
            # 2006-2019年使用OLDWANTP
            partner_cols = [col for col in df_std.columns if 'OLDWANTP' in col.upper() and '_I' not in col.upper() and '_STD' not in col.upper()]
            print(f"  使用OLDWANTP变量创建BIRTHINTENTION_P（2006-2019年）")
        else:
            # 2022-2023年使用WANTPART
            partner_cols = [col for col in df_std.columns if 'WANTPART' in col.upper() and '_I' not in col.upper() and '_STD' not in col.upper()]
            print(f"  使用WANTPART变量创建BIRTHINTENTION_P（2022-2023年）")
        
        for col in partner_cols:
            if df_std.loc[year_mask, col].notna().any():
                unique_vals = df_std.loc[year_mask, col].dropna().unique()
                print(f"  {col} 原始值范围: {sorted(unique_vals)[:5]}...")
                
                # 判断使用哪种映射
                if any(val > 10 for val in unique_vals):
                    # 使用11-66映射
                    df_std.loc[year_mask, 'BIRTHINTENTION_P'] = df_std.loc[year_mask, col].map(mapping_11_66_to_1_6)
                    print(f"    → 应用11-66到1-6映射")
                else:
                    # 使用1-6映射
                    df_std.loc[year_mask, 'BIRTHINTENTION_P'] = df_std.loc[year_mask, col].map(mapping_1_6_to_1_6)
                    print(f"    → 应用1-6到1-6映射")
                
                # 验证映射结果
                std_vals = df_std.loc[year_mask, 'BIRTHINTENTION_P'].dropna().unique()
                print(f"    标准化后值: {sorted(std_vals)}")
                break  # 只使用第一个找到的伴侣意愿列
    
    print("\n" + "="*60)
    print("标准化完成！验证结果：")
    print(f"WANTRESP_STD 唯一值: {sorted(df_std['WANTRESP_STD'].dropna().unique())}")
    print(f"WANTPART_STD 唯一值: {sorted(df_std['WANTPART_STD'].dropna().unique())}")
    print(f"BIRTHINTENTION_R 唯一值: {sorted(df_std['BIRTHINTENTION_R'].dropna().unique())}")
    print(f"BIRTHINTENTION_P 唯一值: {sorted(df_std['BIRTHINTENTION_P'].dropna().unique())}")
    
    # 统计每个年份的缺失值
    print("\n各年份标准化后的数据完整性：")
    for year_range in sorted(df_std['YEAR_RANGE'].dropna().unique()):
        year_data = df_std[df_std['YEAR_RANGE'] == year_range]
        total = len(year_data)
        wantresp_valid = year_data['WANTRESP_STD'].notna().sum()
        wantpart_valid = year_data['WANTPART_STD'].notna().sum()
        birthintention_r_valid = year_data['BIRTHINTENTION_R'].notna().sum()
        birthintention_p_valid = year_data['BIRTHINTENTION_P'].notna().sum()
        
        print(f"{year_range}: WANTRESP_STD {wantresp_valid}/{total} ({wantresp_valid/total*100:.1f}%), "
              f"WANTPART_STD {wantpart_valid}/{total} ({wantpart_valid/total*100:.1f}%)")
        print(f"         BIRTHINTENTION_R {birthintention_r_valid}/{total} ({birthintention_r_valid/total*100:.1f}%), "
              f"BIRTHINTENTION_P {birthintention_p_valid}/{total} ({birthintention_p_valid/total*100:.1f}%)")
    
    return df_std

def save_standardized_data(df_standardized):
    """
    保存标准化后的数据
    """
    # 保存标准化后的数据
    output_csv = 'temp/data_cleaning/nsfg_pooled_preg_standardized.csv'
    df_standardized.to_csv(output_csv, index=False)
    print(f"\n标准化数据已保存至: {output_csv}")
    
    # 尝试保存为Stata格式
    try:
        output_dta = 'temp/data_cleaning/nsfg_pooled_preg_standardized.dta'
        # 处理可能导致Stata保存失败的列
        df_stata = df_standardized.copy()
        
        # 转换object类型的列
        for col in df_stata.columns:
            if df_stata[col].dtype == 'object':
                try:
                    df_stata[col] = pd.to_numeric(df_stata[col], errors='coerce')
                except:
                    # 如果无法转换为数值，保持为字符串
                    df_stata[col] = df_stata[col].astype(str)
        
        df_stata.to_stata(output_dta, write_index=False)
        print(f"标准化数据已保存至: {output_dta}")
    except Exception as e:
        print(f"警告：无法保存为Stata格式 - {e}")

def generate_standardization_report(df_standardized):
    """
    生成标准化汇总报告
    """
    print("\n" + "="*60)
    print("标准化汇总报告")
    print("="*60)
    
    # 显示WANTRESP_STD的分布
    print("\nWANTRESP_STD 分布:")
    wantresp_dist = df_standardized['WANTRESP_STD'].value_counts().sort_index()
    for val, count in wantresp_dist.items():
        label = {1: "Later/overdue", 2: "Right time", 3: "Too soon", 
                4: "Didn't care", 5: "Unwanted", 6: "Don't know"}.get(val, "Unknown")
        print(f"  {int(val)}: {label:15} - {count:,} ({count/len(df_standardized)*100:.1f}%)")
    
    print("\nWANTPART_STD 分布:")
    wantpart_dist = df_standardized['WANTPART_STD'].value_counts().sort_index()
    for val, count in wantpart_dist.items():
        label = {1: "Later/overdue", 2: "Right time", 3: "Too soon", 
                4: "Didn't care", 5: "Unwanted", 6: "Don't know"}.get(val, "Unknown")
        print(f"  {int(val)}: {label:15} - {count:,} ({count/len(df_standardized)*100:.1f}%)")
    
    # 显示新的BIRTHINTENTION变量分布
    print("\nBIRTHINTENTION_R (受访者意愿) 分布:")
    birthintention_r_dist = df_standardized['BIRTHINTENTION_R'].value_counts().sort_index()
    for val, count in birthintention_r_dist.items():
        label = {1: "Later/overdue", 2: "Right time", 3: "Too soon", 
                4: "Didn't care", 5: "Unwanted", 6: "Don't know"}.get(val, "Unknown")
        print(f"  {int(val)}: {label:15} - {count:,} ({count/len(df_standardized)*100:.1f}%)")
    
    print("\nBIRTHINTENTION_P (伴侣意愿) 分布:")
    birthintention_p_dist = df_standardized['BIRTHINTENTION_P'].value_counts().sort_index()
    for val, count in birthintention_p_dist.items():
        label = {1: "Later/overdue", 2: "Right time", 3: "Too soon", 
                4: "Didn't care", 5: "Unwanted", 6: "Don't know"}.get(val, "Unknown")
        print(f"  {int(val)}: {label:15} - {count:,} ({count/len(df_standardized)*100:.1f}%)")
    
    # 显示数据完整性对比
    print("\n" + "="*60)
    print("数据完整性对比:")
    print("="*60)
    
    total_obs = len(df_standardized)
    wantresp_valid = df_standardized['WANTRESP_STD'].notna().sum()
    wantpart_valid = df_standardized['WANTPART_STD'].notna().sum()
    birthintention_r_valid = df_standardized['BIRTHINTENTION_R'].notna().sum()
    birthintention_p_valid = df_standardized['BIRTHINTENTION_P'].notna().sum()
    
    print(f"WANTRESP_STD:      {wantresp_valid:,}/{total_obs:,} ({wantresp_valid/total_obs*100:.1f}%)")
    print(f"WANTPART_STD:      {wantpart_valid:,}/{total_obs:,} ({wantpart_valid/total_obs*100:.1f}%)")
    print(f"BIRTHINTENTION_R:  {birthintention_r_valid:,}/{total_obs:,} ({birthintention_r_valid/total_obs*100:.1f}%)")
    print(f"BIRTHINTENTION_P:  {birthintention_p_valid:,}/{total_obs:,} ({birthintention_p_valid/total_obs*100:.1f}%)")
    
    # 显示改进效果
    improvement = birthintention_p_valid - wantpart_valid
    print(f"\n使用OLDWANTP/WANTPART策略的改进效果:")
    print(f"伴侣意愿数据增加了 {improvement:,} 条记录 ({improvement/total_obs*100:.1f}%)")

# =============================================================================
# 主函数
# =============================================================================

def main():
    """
    主函数：执行完整的数据处理流程
    1. 合并多个年份的NSFG数据
    2. 检查wantedness变量的分布
    3. 标准化wantedness变量
    4. 保存处理后的数据
    """
    print("\nNSFG数据清理和标准化脚本 (2006-2023)")
    print("="*60)
    
    # 创建输出目录
    os.makedirs("temp/data_cleaning", exist_ok=True)
    
    # 步骤1：合并数据
    print("\n步骤1：合并NSFG数据...")
    pooled_data = merge_nsfg_data()
    
    if pooled_data is None:
        print("✗ 数据合并失败，程序终止")
        return None
    
    print("\n✓ 数据合并完成!")
    print(f"合并后数据集: {pooled_data.shape[0]:,} 行 × {pooled_data.shape[1]} 列")
    
    # 步骤2：检查wantedness变量
    print("\n步骤2：检查wantedness变量分布...")
    inspect_wantedness_variables(pooled_data)
    
    # 步骤3：标准化wantedness变量
    print("\n步骤3：标准化wantedness变量...")
    df_standardized = standardize_wantedness_variables(pooled_data)
    
    # 步骤4：保存标准化数据
    print("\n步骤4：保存标准化数据...")
    save_standardized_data(df_standardized)
    
    # 步骤5：生成报告
    print("\n步骤5：生成标准化报告...")
    generate_standardization_report(df_standardized)
    
    print("\n" + "="*60)
    print("✓ 所有处理步骤完成!")
    print(f"最终数据集: {df_standardized.shape[0]:,} 行 × {df_standardized.shape[1]} 列")
    print("="*60)
    
    return df_standardized

if __name__ == "__main__":
    df_final = main()