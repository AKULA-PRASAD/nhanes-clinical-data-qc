library(haven)
demo <- read_xpt("/Users/kalki/Downloads/DEMO_L.xpt")

# recode education "Don't know" (9) to missing
demo$DMDEDUC2[demo$DMDEDUC2 == 9] <- NA

# filter to adults (18+) — the population education/income apply to
adult <- demo[demo$RIDAGEYR >= 18, ]

# --- profile: full sample vs adults ---
nrow(demo)                              # total
nrow(adult)                             # adults
summary(adult$RIDAGEYR)                 # adult age
table(adult$RIAGENDR, useNA="always")   # adult sex
table(adult$DMDEDUC2, useNA="always")   # adult education
summary(adult$INDFMPIR)                 # adult income ratio