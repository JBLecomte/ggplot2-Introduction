#### Blank theme
old <- theme_set(theme_bw(base_size=14))

theme_set(theme_gray(base_size=12)) 

custom_theme <-theme_update(axis.text = element_text(size = rel(0.8)), axis.ticks = element_line(colour = "black",size=1),
                   #axis.ticks.length=unit(0.3,"cm"),
                   legend.key = element_rect(colour = "grey80",fill= "grey80"), panel.background = element_rect(fill = NA,colour = NA),
                   panel.border = element_rect(fill = NA,colour = NA),
                   panel.grid.major = element_line(colour = "grey90",size = 0.2),
                   panel.grid.minor = element_line(colour = NA,size = 0.5),
                   strip.background = element_rect(fill = "grey80",colour = "grey50"),
                   strip.background = element_rect(fill = "grey80",colour = "grey50"),
                   axis.line = element_line(),
                   panel.background = element_rect(fill = "transparent",colour =
                                                     NA), # or theme_blank()
                   panel.grid.minor = element_blank(),
                   #panel.grid.major = element_blank(),
                   plot.background = element_rect(fill = "transparent",colour =NA),
                   legend.background = element_rect(colour = 'black', fill = NA),  
                   legend.key = element_rect(colour = NA,fill=NA),
                   legend.key.size = unit(1.1,'line'),
                   #legend.key.width = unit(5,"line"),
                   legend.title = element_text(size = rel(1), face = 'bold'),
                   legend.text = element_text(size = rel(1))#,hjust = 1, vjust = 0.5),
                   #                    
)
#theme_set(custom_theme)
textwidth = 17
