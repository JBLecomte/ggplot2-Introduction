###########################################
## Main R script, which runs the analysis
###########################################
rm(list = ls())

## Source useful package and functions
source('R/Fun/Boot.R')


df_data <- data.frame()
## Compile Rnw to tex
require(knitr)
knit('Doc/ggplot2Intro.Rnw', 'Doc/ggplot2Intro.tex')
