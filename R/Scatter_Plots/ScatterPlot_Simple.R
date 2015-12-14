################################################################################
### Creating a Scatter plot
################################################################################
### the data.frame used in this script is df_data

### Simple scatter plot
scatter_plot <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass)) +
                     geom_point()
scatter_plot

### Simple scatter plot with color 
scatter_plot_color <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                              color=AREA)) +
  geom_point()
scatter_plot_color

### Simple scatter plot with color and shape
scatter_plot_shape <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                              color=AREA, shape=Year_fac)) +
  geom_point()
scatter_plot_shape


### Simple scatter plot with color
scatter_plot_color_cont <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                              color=Avg_net_temp)) +
  geom_point()
scatter_plot_color_cont

### Simple scatter plot with size
scatter_plot_area <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                              size=Avg_net_temp)) +
  geom_point()
scatter_plot_area

### Improvement of a plot
scatter_plot_shape_imp <- scatter_plot_shape + 
  scale_shape_discrete(name="Years") +
  scale_color_discrete(name="Area") +
  xlab('Average net depth (in m)') + ylab('Biomass (in kg)')

print(scatter_plot_shape_imp)
