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

# NHANES Adult Demographics: A Data Profile

A reproducible demographic profile of the NHANES survey data, focused on the adult population. Second project in a clinical/research data analyst portfolio.

## What this does
Loads NHANES demographics (DEMO_L), cleans coded-missing values, filters to adults, and profiles four key variables — reproducibly in R.

## Key insight (data judgment)
On the full sample, education (DMDEDUC2) appeared to have **4,150 missing values** — looking like a low-quality variable. But filtering to adults (18+), the missing count dropped to **370**. The "missingness" was almost entirely children, for whom the adult-education question does not apply — not bad data. Correct population framing changed the entire quality story.

## Findings (adults, 18+)
- Sample: 11,933 total → 8,153 adults after filtering
- Age: adults only (18–80), profiled with summary statistics
- Sex: [fill in — e.g., X male, Y female]
- Education: levels 1–5; recoded "Don't know" (9) to missing; 370 missing among adults
- Income-to-poverty ratio: mean ~2.7; top-coded at 5.0, so true mean is somewhat higher

## Methods notes
- Recoded education code 9 ("Don't know") to NA before analysis
- Filtered to age ≥ 18 for education/income relevance
- Noted top-coding on the income variable

## Tools
R, haven (reads SAS .xpt files)

## Files
- `02_nhanes_profile_project.R` — the reproducible analysis script
