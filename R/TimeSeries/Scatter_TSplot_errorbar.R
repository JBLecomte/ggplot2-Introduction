################################################################################
### Plot the biomass as a time series by Year
################################################################################

### Now we are using a summary of the data frame df_data which is df_data_summary

#### Plot of the mean and interval grouping 95% of the data with point
scatter_TSplot_i95 <- ggplot(data=df_data_summary, aes(x=Year, y=B_mean)) + 
  geom_point() + 
  geom_pointrange(aes(ymin = B_q025, ymax = B_q975))
print(scatter_TSplot_i95)

#### Plot of the mean and interval grouping 95% of the data with line
scatter_TSplot_errori95 <- ggplot(data=df_data_summary, aes(x=Year, y=B_mean)) + 
  geom_line() + 
  geom_errorbar(aes(ymin = B_q025, ymax = B_q975), width = 0.2)
print(scatter_TSplot_errori95)
