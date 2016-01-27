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

## Explanatory plots
source('R/TimeSeries/TS_all.R')


## Compile Rnw to tex
knit('ggplot2Intro.Rnw', 'ggplot2Intro.tex', quiet=TRUE)

## Compile tex to pdf, you need Texlive or Miktex 
## with pdflatex.exe in your Environment variables
texi2pdf('ggplot2Intro.tex', clean=TRUE)
