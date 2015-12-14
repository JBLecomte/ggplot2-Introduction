###########################################
## Main R script, which runs the analysis
###########################################
rm(list = ls())

## Source useful package and functions
source('R/Fun/Boot.R')

## Simulation of a data.frame
source('R/Data_Simulation/Data_Simulation_Year.R')

## Explanatory plots
source('R/Scatter_PLots/ScatterPlot_Simple.R')

## Compile Rnw to tex
knit('ggplot2Intro.Rnw', 'ggplot2Intro.tex', quiet=TRUE)
texi2pdf('ggplot2Intro.tex', clean=TRUE)
