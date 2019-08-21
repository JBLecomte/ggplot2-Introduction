################################################################################
### Color blind palette
################################################################################

cb_palette_grey <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442",
                "#0072B2", "#D55E00", "#CC79A7", "#999999")

cb_palette_black <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442",
                     "#0072B2", "#D55E00", "#CC79A7", "#000000")

# ### Discrete scale
# sp_color_cb <- ggplot(df_data, aes(x=Depth, y=Biomass,
#                                      color=Year_fac)) +
#   geom_point() +
#   scale_color_manual(name='Year', values = cb_palette_black)
# print(sp_color_cb)
