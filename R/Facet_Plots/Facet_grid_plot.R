################################################################################
### Plots with different facet with the facet_grid function
################################################################################

### Plot that will be faceted
fg_base <- ggplot(data=df_data, aes(x=Avg_net_depth, y=nFish, color=AREA)) + 
  geom_point()

### Year as faceting variables
fg1_1 <- ggplot(data=df_data, aes(x=Avg_net_depth, y=nFish, color=AREA)) + 
  geom_point() + facet_grid( . ~ Year)

### Year as faceting variables
fg1_2 <- ggplot(data=df_data, aes(x=Avg_net_depth, y=nFish, color=AREA)) + 
  geom_point() + facet_grid(Year ~ .)

### Year as faceting variables + a facet with all the data
fg1_3 <- ggplot(data=df_data, aes(x=Avg_net_depth, y=nFish, color=AREA)) + 
  geom_point() + facet_grid(Year ~ ., margins = TRUE)


### Area and Year as faceting variables
fg2_2 <- ggplot(data=df_data, aes(x=Avg_net_depth, y=nFish)) + 
  geom_point() + facet_grid(AREA ~ Year)

### Scales and space free
fg2_3 <- ggplot(data=df_data, aes(x=Avg_net_depth, y=nFish)) + 
  geom_point() + facet_grid(AREA ~ Year, scales='free', space = 'free')


### Change facet label position
fg2_4 <- ggplot(data=df_data, aes(x=Avg_net_depth, y=nFish)) + 
  geom_point() + facet_grid(AREA ~ Year, switch = "both")

### Change facet label position
fg2_5 <- ggplot(data=df_data, aes(x=Avg_net_depth, y=nFish)) + 
  geom_point() + facet_grid(AREA ~ Year, switch = "y")


################################################################################
### Change label name
################################################################################

### Year as faceting variables + a facet with all the data
fg1_3_alpha <- ggplot(data=df_data, aes(x=Avg_net_depth, y=nFish, color=AREA)) + 
  geom_point() + facet_grid(Year ~ ., labeller = labeller(Year = fn_alphabetic_label))

