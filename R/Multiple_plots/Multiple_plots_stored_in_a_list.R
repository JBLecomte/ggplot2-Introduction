
library("gridExtra")
pl <- lapply(1:5, function(.x) qplot(1:10,rnorm(10), main=paste("plot",.x)))
ml <- marrangeGrob(Plot_timeseries_cov_pred_list, nrow=2, ncol=2)

print(ml)

