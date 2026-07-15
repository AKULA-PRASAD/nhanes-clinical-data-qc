# 01-nhanes-intake-table1
NHANES demographics data profile &amp; QC — clinical data analyst training

# NHANES Demographics: Data Profile & QC

First deliverable in a clinical/research data analyst portfolio.

## What this does
Loads the NHANES demographics file (DEMO_L) and produces a reproducible
data profile and quality check in R.

## Key findings
- 11,933 participants, 27 variables
- Age: 0–80 years (mean 38.3, median 37)
- Sex: 5,575 male, 6,358 female
- No missing or out-of-range values in age or sex — clean and analysis-ready

## Tools
R, haven (reads SAS .xpt files)

## Files
- `01_nhanes_profile.R` — the reproducible script
