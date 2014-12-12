##########################################################
## First R file source, load useful packages and function
##########################################################

#### Load required package, and install it if not
list.of.packages <- c('ggplot2', 'RColorBrewer',
                      'plyr', 'reshape2', 'dplyr',
                      'scales', 'gridExtra',
                      'maps','mapdata',
                      'knitr')


# new.packages <- list.of.packages[!(list.of.packages %in%
#                                      installed.packages(lib.loc = 'packrat/lib/x86_64-w64-mingw32/3.1.2' )[,"Package"])]
# 
# if(length(new.packages)){ install.packages(new.packages)}

lapply(list.of.packages, require, character.only=T)


#### Sober plot theme
source('R/Fun/Theme_ggplot2.R')

#### Unpack the object stored in a list
source('R/Fun/unpack.list.R')

