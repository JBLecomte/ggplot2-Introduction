library(ggplot2)

# create fictitious data
a <- runif(100)
b <- runif(120)
c <- runif(70)
d <- runif(150)

# data groups
group <- factor(rep(1:4, c(10, 12, 7, 15)))

# dataframe
mydata <- data.frame(c(a,b,c,d), group)
names(mydata) <- c("value", "group")

# function for computing mean, DS, max and min values
min_mean_sd_max <- function(x) {
  r <- c(min(x), mean(x) - sd(x), mean(x), mean(x) + sd(x), max(x))
  names(r) <- c("ymin", "lower", "middle", "upper", "ymax")
  r
}

# define the summary function
q05_q25_q50_q75_q95 <- function(x) {
  r <- quantile(x, probs = c(0.05, 0.25, 0.5, 0.75, 0.95))
  names(r) <- c("ymin", "lower", "middle", "upper", "ymax")
  r
}

# ggplot code
boxplot_min_mean_sd_max <- ggplot(aes(y = value, x = factor(group)), data = mydata)
boxplot_min_mean_sd_max <- boxplot_min_mean_sd_max + stat_summary(fun.data = min_mean_sd_max, geom = "boxplot")  +
 geom_jitter(position=position_jitter(width=.2), size=3)
print(boxplot_min_mean_sd_max)

# ggplot code
boxplot_q05_q25_q50_q75_q95 <- ggplot(aes(y = value, x = factor(group)), data = mydata)
boxplot_q05_q25_q50_q75_q95 <- boxplot_q05_q25_q50_q75_q95 + stat_summary(fun.data = q05_q25_q50_q75_q95, geom = "boxplot")  +
  geom_jitter(position=position_jitter(width=.2), size=3)
print(boxplot_q05_q25_q50_q75_q95)

