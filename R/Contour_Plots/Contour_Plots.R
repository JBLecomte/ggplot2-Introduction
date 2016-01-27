################################################################################
### Draw contour plots of depth versus temperature
################################################################################

### Set up a blanck plot
contour_plot <- ggplot(df_data, aes(Avg_net_depth, Avg_net_temp))

contour_plot <- contour_plot + 
  xlab('Depth') + ylab('Temperature')

### Start to play with contour functions
contour_plot <- contour_plot + geom_density_2d() 

contour_plot <- contour_plot + geom_raster(aes(fill = density)) +
  geom_contour(colour = "white")

