################################################################################
### Explore the boxplot geom
################################################################################

## Simple boxplot
boxplot_TS <- ggplot(data=df_data, aes(x=Year, y=Biomass)) + 
  geom_boxplot()
print(boxplot_TS)

## Simple boxplot with Year as factor !!!
boxplot_TSf <- ggplot(data=df_data, aes(x=factor(Year), y=Biomass)) + 
  geom_boxplot() 
print(boxplot_TSf)

## Boxplot with colour
boxplot_TS_AREA <- ggplot(data=df_data, aes(x=factor(Year), y=Biomass, 
                                            colour=AREA)) +
  geom_boxplot()
print(boxplot_TS_AREA)

## x-axis changing label
boxplot_TS_AREA <- boxplot_TS_AREA +
  scale_x_discrete(name=NULL,
                   breaks=c("2005", "2009", "2013"),
                   labels=c("Year-2005", "Year-2009", "Year-2013"))
print(boxplot_TS_AREA)

## Changing legend label
df_data$AREA <- factor(df_data$AREA, levels=c("5AB", "5CD"),
                       labels=c("Northern area", "Southern area"))

## Making final nicer plot                  
boxplot_TS_AREA <- ggplot(data=df_data, aes(x=factor(Year), y=Biomass, 
                                           colour=AREA)) +
  geom_boxplot() + 
  scale_x_discrete(name=NULL,
                   breaks=c("2005", "2009", "2013"),
                   labels=c("Year-2005", "Year-2009", "Year-2013")) +
  scale_color_manual(name='Area', values = cb_palette_black) +
  theme(legend.position=c(0.2,0.9))
print(boxplot_TS_AREA)

## reChanging legend label
df_data$AREA <- factor(df_data$AREA, 
                       levels=c("Northern area", "Southern area"),
                       labels=c("5AB", "5CD"))
