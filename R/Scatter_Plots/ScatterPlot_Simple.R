################################################################################
### Creating a Scatter plot
################################################################################

### Simple scatter plot
scatter_plot <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass)) +
                     geom_point()
scatter_plot

### Simple scatter plot with color 
scatter_plot_area <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                              color=AREA)) +
  geom_point()
scatter_plot_area

### Simple scatter plot with color and shape
scatter_plot_area <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                              color=AREA, shape=Year_fac)) +
  geom_point()
scatter_plot_area


### Simple scatter plot with color
scatter_plot_area <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                              color=Avg_net_temp)) +
  geom_point()
scatter_plot_area

### Simple scatter plot with size
scatter_plot_area <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                              size=Avg_net_temp)) +
  geom_point()
scatter_plot_area
