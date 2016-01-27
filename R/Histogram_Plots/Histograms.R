################################################################################
### Plot histograms
################################################################################
head(df_data)

### Default histograms with automatic bin.width
hist_durations <- ggplot(data=df_data, aes(x=DURATION_MINUTES)) +
                  geom_histogram()
hist_durations


## Choice of the binwidth
hist_durations_1 <- ggplot(data=df_data, aes(x=DURATION_MINUTES)) +
  geom_histogram(binwidth=1)
hist_durations_1


hist_durations_01 <- ggplot(data=df_data, aes(x=DURATION_MINUTES)) +
  geom_histogram(binwidth=0.1)
hist_durations_01


## Alternative function
hist_durations <- ggplot(data=df_data, aes(x=DURATION_MINUTES)) +
  geom_bar()
hist_durations



### Add a factor to the histogram
hist_durations <- ggplot(data=df_data, aes(x=DURATION_MINUTES, fill=factor(Year))) +
  geom_bar()
hist_durations

### Add a factor to the histogram side by side
hist_durations <- ggplot(data=df_data, aes(x=DURATION_MINUTES, fill=factor(Year))) +
  geom_bar(position = "dodge")
hist_durations



### Add a factor to the histogram
hist_durations_year <- ggplot(data=df_data, 
                              aes(factor(Year), DURATION_MINUTES)) +
  geom_bar(position = "dodge", stat = "identity") 
hist_durations_year

### Adding error bars
duration_error <- ddply(df_data, c("Year"), summarise,
                                           D_min=max(DURATION_MINUTES)+-0.5,
                        D_max=max(DURATION_MINUTES)+(0.5))

dodge <- position_dodge(width=0.5)


hist_durations_year <- ggplot() +
  geom_bar(data=df_data, 
           aes(x=factor(Year), y=DURATION_MINUTES), position = "dodge", stat = "identity") +
  geom_errorbar(data=duration_error, aes(x=factor(Year), ymin = D_min, ymax = D_max), position = dodge, width = 0.25)
hist_durations_year




