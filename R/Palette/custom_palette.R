################################################################################
### Custom palette
################################################################################

# ?colorRampPalette

## Palette from white-grey to red to black
Palette_grb <- colorRampPalette(c(colors()[139], colors()[554], colors()[153]))

# ### Discrete scale
# sp_color_f_grb <- ggplot(df_data, aes(x=Depth, y=Biomass,
#                                      color=Year_fac)) +
#   geom_point() +
#   scale_color_manual(name='Year', values = Palette_grb(nYear))
# print(sp_color_f_grb)
# 
# 
# ### Continuous scale
# sp_color_cont_grb <- ggplot(df_data, aes(x=Depth, y=Biomass,
#                                      color=Temp)) +
#   geom_point() +
#   scale_color_gradientn(name='Temperature', colors = Palette_grb(3))
# print(sp_color_cont_grb)
