# RGB Chart color: colorblind friendly
require(ggplot2)

cbPaletteBlack <- c(rgb(0,0,0, maxColorValue=100), rgb(90,60,0, maxColorValue=100), rgb(35,70,90, maxColorValue=100) , rgb(0,60,50, maxColorValue=100), rgb(95,90,25, maxColorValue=100), rgb(0,45,70, maxColorValue=100), rgb(80,40,0, maxColorValue=100), rgb(80,60,70, maxColorValue=100))


# The palette with grey:
cbPaletteGrey <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")


# To use for fills, add
scale_fill_manual(values=cbPalette)

# To use for line and point colors, add
scale_colour_manual(values=cbPalette)

nObs <- 100
df <- data.frame(x=rnorm(nObs, 0, 10),y=rnorm(nObs, 0, 10),type= as.factor(rep(seq(1,8),100) ))

ggplot(df, aes(x=x, y=y, color=type)) + geom_point(size=5) + scale_color_manual(values=cbPaletteBlack)
ggplot(df, aes(x=x, y=y, color=type)) + geom_point(size=5) + scale_color_manual(values=cbPaletteGrey)

