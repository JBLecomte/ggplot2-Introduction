################################################################################
### Example of scale color 
################################################################################

### Simple scatter plot with defaults colors
sp_color <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                          color=AREA)) +
  geom_point()
sp_color

###########################################################
### Simple scatter plot with manual colors 
sp_c_manual <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                          color=AREA)) +
  geom_point() +
  scale_color_manual(values=c("#E69F00", "#56B4E9"))
sp_c_manual

###########################################################
### Simple scatter plot with brewer palette 
sp_c_brewer <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                   color=factor(Year))) +
  geom_point() +
  scale_color_brewer(palette="Dark2")
sp_c_brewer


### Simple scatter plot with brewer palette 
sp_c_brewer <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                   color=factor(Year))) +
  geom_point() +
  scale_color_brewer(palette="Dark2", direction=-1)
sp_c_brewer

### Simple scatter plot with brewer palette 
sp_c_brewer <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                   color=factor(Year))) +
  geom_point() +
  scale_color_brewer(palette="Dark2", na.values='black')
sp_c_brewer

###########################################################
### Simple scatter plot with wesanderson palette 
require(wesanderson)
sp_c_wanderson <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                      color=factor(Year))) +
  geom_point() +
  scale_color_manual(name='Year', values=wes_palette(name="Darjeeling"))
print(sp_c_wanderson)

###########################################################
### Simple scatter plot with grey palette
sp_c_grey <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                color=factor(Year))) +
  geom_point() +
  scale_color_grey(name='Year', start=0.8, end=0.2)
print(sp_c_grey)

###########################################################
### Simple scatter plot with HUE palette
sp_c_hue <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                color=factor(Year))) +
  geom_point() +
  scale_colour_hue(name='Year', l=70, c=150)
print(sp_c_hue)

# Adjust luminosity and chroma
  sp_c_hue <- ggplot(df_data, aes(x=Avg_net_depth, y=Biomass,
                                  color=factor(Year))) +
    geom_point() +
  scale_colour_hue(name='Year', l=10, c=150)
print(sp_c_hue)
