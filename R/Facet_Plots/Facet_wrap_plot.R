################################################################################
### Plots with different facet with the facet_wrap function
################################################################################

## Basic facet plot
fw1 <- ggplot(data=df_data, aes(x=DURATION_MINUTES)) +
  geom_histogram() + facet_wrap(~ AREA)

## Basic facet plot with free scale, in this case x and y-axis are free
fw1_free <- ggplot(data=df_data, aes(x=DURATION_MINUTES)) +
  geom_histogram() + facet_wrap(~ AREA , scales = 'free')

## Basic facet plot with free scale, in this case x and y-axis are free
fw1_free_y <- ggplot(data=df_data, aes(x=DURATION_MINUTES)) +
  geom_histogram() + facet_wrap(~ AREA , scales = 'free_y')


## Basic facet plot with one column
fw1_col <- ggplot(data=df_data, aes(x=DURATION_MINUTES)) +
  geom_histogram() + facet_wrap(~ AREA, ncol = 1, scales = 'fixed')

## Basic facet plot with one column
fw1_col2 <- ggplot(data=df_data, aes(x=DURATION_MINUTES)) +
  geom_histogram() + facet_wrap(~ AREA, ncol = 1, nrow = 2)

## Basic facet plot with 2 faceting variables
fw2 <- ggplot(data=df_data, aes(x=DURATION_MINUTES)) +
  geom_histogram() + facet_wrap(~ AREA + Year_fac)

fw2_2 <- ggplot(data=df_data, aes(x=DURATION_MINUTES)) +
  geom_histogram() + facet_wrap( ~ Year_fac + AREA)

