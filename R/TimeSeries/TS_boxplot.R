################################################################################
### Plot the biomass as a time series by Year
################################################################################

#### Boxplot with Year as a continuous variable
boxplot_TS <- ggplot(data=df_data, aes(x=Year, y=Biomass)) + 
  geom_boxplot()
print(boxplot_TS)

#### Boxplot with Year as a factor variable
boxplot_TS <- ggplot(data=df_data, aes(x=factor(Year), y=Biomass)) + 
  geom_boxplot() 
print(boxplot_TS)


#### Boxplot with Year as a factor variable and color by AREA
boxplot_TS_AREA <- ggplot(data=df_data, aes(x=factor(Year), y=Biomass, colour=AREA)) + 
  geom_boxplot() 
print(boxplot_TS_AREA)
