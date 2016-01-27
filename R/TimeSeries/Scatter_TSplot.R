################################################################################
### Plot the biomass as a time series
################################################################################

#### Very simple plot by date
scatter_TSplot <- ggplot(data=df_data, aes(x=Date, y=Biomass)) + 
                    geom_point()
print(scatter_TSplot)

#### Very simple plot by date
scatter_TSplot_year <- ggplot(data=df_data, aes(x=Year, y=Biomass)) + 
  geom_point()
print(scatter_TSplot_year)
