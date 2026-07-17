#===========================================
# NHANES Demographics : Data profile & QC
# Author : PRASAD AKULA
# Day 3 mini-project 
#============================================

#=== Load ======
library(haven)
demo<-read_xpt("/Users/kalki/Downloads/DEMO_L.xpt")

# === Day 1 ===
dim(demo)
head(demo)
range(demo$RIDAGEYR)
table(demo$RIAGENDR)

# === Quality Check ===
sum(is.na(demo$RIDAGEYR))
summary(demo$RIAGENDR)
table(demo$RIAGENDR,useNA = "always")

