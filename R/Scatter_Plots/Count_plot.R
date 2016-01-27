################################################################################
### geom_count function
################################################################################

### Simple scatter plot with size
scatter_plot_count <- ggplot(df_data, aes(x=Avg_net_temp, y=nFish)) +
  geom_count()
scatter_plot_count
  
scatter_plot_count <- scatter_plot_count +
  xlab('Average net temperature (in C)') + ylab('Number of fish')
print(scatter_plot_count)
