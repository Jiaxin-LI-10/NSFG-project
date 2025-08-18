## NSFG Project: Pregnancy Intentions and Bargaining Power (2006–2023)

This repository pools National Survey of Family Growth (NSFG) pregnancy files (2006–2023), harmonizes respondent and partner pregnancy intention variables, constructs consistent outcome codes, and estimates a household bargaining model using the live birth vs induced abortion choice. It provides an end-to-end, reproducible pipeline (pool → clean → estimate) with saved outputs.

## Data and Repository Layout

- Data: `data/NSFG/`
  - Rounds: `2006-2010`, `2011-2013`, `2013-2015`, `2015-2017`, `2017-2019`, `2022-2023`
  - Contains original `.dat/.dct` (fixed-width with Stata dictionaries) and `.csv` for 2022–2023, plus official PDF codebooks
- Scripts: `dofile/`
  - `02_pool_2006_2023.py`: Pool pregnancy data across rounds; add `SURVEY_YEAR/YEAR_RANGE`; create per-period outcome columns `OUTCOME_YYYY_YYYY`
  - `03_clean_2006_2023.py`: Clean/standardize variables; create derived variables (`OUTCOME_MERGED`, `BIRTHINTENTION_*`, grouping/time variables); export datasets and LaTeX tables
  - `04_estimate_2006_2003_new.py`: Define optimal outcome (live birth vs induced abortion) and estimate the bargaining model
  - `04_estimate_2006_2023_old.py`: Legacy estimation script (kept for reference)
- Outputs: `temp/data_cleaning/` (auto-created by scripts)
  - Pooled/cleaned datasets (`.csv` and best-effort `.dta`)
  - Descriptive summaries and LaTeX tables (e.g., `descriptive_stats.tex`)
  - Estimation results and visuals (e.g., `bargaining_power_results.csv/.tex`, `bargaining_power_analysis.png`)

## Requirements

- Python 3.9+ (recommended)
- Packages: pandas, numpy, scipy, matplotlib

```bash
python -m venv .venv
source .venv/bin/activate  # Windows: .venv\Scripts\activate
pip install -U pandas numpy scipy matplotlib
```

Optional: For LaTeX long tables, add `\usepackage{longtable}` to your preamble.

## Quickstart (Recommended Order)

1) Pool NSFG pregnancy data (creates pooled file and per-period outcome columns)

```bash
python dofile/02_pool_2006_2023.py
```

Key output:
- `temp/data_cleaning/nsfg_pooled_preg.csv` (and best-effort `.dta`)

2) Clean and standardize (creates unified `OUTCOME_MERGED`, `WANTRESP_STD/WANTPART_STD`, `BIRTHINTENTION_R/P`, etc.)

```bash
python dofile/03_clean_2006_2023.py
```

Key outputs:
- `temp/data_cleaning/nsfg_cleaned_preg.csv` (and best-effort `.dta`)
- `temp/data_cleaning/descriptive_stats.tex`
- `temp/data_cleaning/nsfg_cleaning_summary.txt`

3) Estimate the bargaining model (focus on the live birth vs induced abortion choice)

```bash
python dofile/04_estimate_2006_2003_new.py
```

Key outputs:
- `temp/data_cleaning/bargaining_power_results.csv/.tex`
- `temp/data_cleaning/bargaining_weights.csv`
- `temp/data_cleaning/bargaining_power_analysis.png`
- `temp/data_cleaning/bargaining_estimation_summary.txt`

Note: `04_estimate_2006_2023_old.py` is a legacy workflow (depends on `nsfg_cleaned_simple.csv`) and is not the primary path.

## Methods (Brief)

- Harmonized outcomes: Build `OUTCOME ∈ {1..6}` from `PRGOUTCOME` and `PREGEND1–3/HOWENDDK`:
  - 1=Live birth, 2=Induced abortion, 3=Stillbirth, 4=Miscarriage, 5=Ectopic pregnancy, 6=Current pregnancy
- Standardized intentions: Map varying codes (e.g., 11–66) to a unified 1–6 scale and construct:
  - Respondent: `WANTRESP_STD`, `BIRTHINTENTION_R`
  - Partner: `WANTPART_STD`, `BIRTHINTENTION_P` (use `OLDWANTP` for 2006–2019; `WANTPART` for 2022–2023)
- Estimation: Treat “live birth (1) vs induced abortion (0)” as the choice. Set the female bargaining weight `η = Λ(Zγ)`. The birth probability is `η·g(W_f) + (1−η)·g(W_m)`. Estimate `γ` by MLE and compute individual-level `η`.

## Key Output Files

- Pooled and cleaned
  - `nsfg_pooled_preg.csv`: Cross-round pregnancy data with `SURVEY_YEAR/YEAR_RANGE` and `OUTCOME_*`
  - `nsfg_cleaned_preg.csv`: Cleaned and derived dataset (includes `OUTCOME_MERGED`, `BIRTHINTENTION_*`)
- Reports and tables
  - `descriptive_stats.tex`: Variable descriptive statistics (LaTeX longtable)
  - `nsfg_cleaning_summary.txt`: Cleaning summary
- Estimation and visuals
  - `bargaining_power_results.csv/.tex`: Parameter estimates and significance
  - `bargaining_weights.csv`: Individual bargaining weights `η`
  - `bargaining_power_analysis.png`: Key plots (weight distribution, time trends, etc.)


