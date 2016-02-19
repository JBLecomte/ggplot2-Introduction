
library("gridExtra")

## Create a list of plots
pl <- lapply(1:5, function(.x) qplot(1:10,rnorm(10),
                                     main=paste("plot",.x)))
## Arrange the plots 
ml <- marrangeGrob(pl, nrow=2, ncol=2)

## and print them
print(ml)

