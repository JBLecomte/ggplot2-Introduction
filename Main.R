###########################################
## Main R script, which runs the analysis
###########################################
rm(list = ls())

## Source useful package and functions
source('R/Fun/Boot.R')

## Simulation of a data.frame
source('R/Data_Simulation/Data_Simulation_Year.R')

## Load palettes
source('R/Palette/colorblind_palette.R')
source('R/Palette/custom_palette.R')


## Explanatory plots
source('R/Scatter_PLots/ScatterPlot_Simple.R')

## Time series plots
source('R/TimeSeries/TS_all.R')

## Boxplots
source('R/Box_Plots/boxplots.R')

## Facet plots
source('R/Facet_Plots/Facet_wrap_plot.R')
source('R/Facet_Plots/Facet_grid_plot.R')


## Compile Rnw to tex
knit('ggplot2Intro.Rnw', 'ggplot2Intro.tex', quiet=TRUE)

## Compile tex to pdf, you need Texlive or Miktex 
## with pdflatex.exe in your Environment variables
texi2pdf('ggplot2Intro.tex', clean=TRUE)

