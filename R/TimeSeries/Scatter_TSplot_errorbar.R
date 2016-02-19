################################################################################
### Plot the biomass as a time series by Year
################################################################################

### Now we are using a summary of the data frame df_data which is df_summary

#### Plot of the mean and interval grouping 95% of the data with point
TSplot_i95 <- ggplot(data=df_summary, aes(x=Year, y=B_mean)) + 
  geom_point() + 
  geom_pointrange(aes(ymin = B_q025, ymax = B_q975))
print(TSplot_i95)

#### Plot of the mean and interval grouping 95% of the data with line
TSplot_errori95 <- ggplot(data=df_summary, aes(x=Year, y=B_mean)) + 
  geom_line() + 
  geom_errorbar(aes(ymin = B_q025, ymax = B_q975), width = 0.2)
print(TSplot_errori95)

#### Improved
TSplot_i95 <- ggplot(data=df_summary, aes(x=Year, y=B_mean)) + 
  geom_point() + geom_pointrange(aes(ymin = B_q025, ymax = B_q975)) +
  ylab('Biomass') +
  scale_x_continuous(name = 'Year', breaks = seq(2005, 2013, by = 1))
print(TSplot_i95)
