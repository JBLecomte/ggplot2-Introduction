##########################################################
## First R file source, load useful packages and function
##########################################################

#### Load required package, and install it if not
list.of.packages <- c('ggplot2', 'RColorBrewer', 'grid',
                      'wesanderson', 'ggthemes',
                      'plyr', 'reshape2', 'dplyr',
                      'scales', 'gridExtra', 'latex2exp',
                      'maps','mapdata',
                      'knitr', #'knitLiteral',
                      'tools')


new.packages <- list.of.packages[!(list.of.packages %in%
                                     installed.packages()[,"Package"])]

if(length(new.packages)){ install.packages(new.packages)}

lapply(list.of.packages, require, character.only=T)


#### Sober plot theme
#source('R/Fun/Theme_ggplot2.R')

### Unpack the object stored in a list
source('R/Fun/unpack.list.R')

### Function to change label in faceted plot
source('R/Fun/fn_alphabetic_label.R')
source('R/Fun/fn_TeX_label.R')

### Function to display multiple-ggplots 
source('R/Fun/gg_multiplot.R')
