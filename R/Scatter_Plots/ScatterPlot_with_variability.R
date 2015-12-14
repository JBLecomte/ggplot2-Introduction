################################################################################
### Creating a Scatter plot with variability
################################################################################

### the data.frame used in this script is df_data_summary


### Simple scatter plot
svar_plot <- ggplot(df_data_summary, aes(x=Year, y=B_mean)) +
  geom_point()
print(svar_plot)


### Simple scatter plot
svar_plot <- ggplot(df_data_summary, aes(x=Year, y=B_mean)) +
  geom_point()
print(svar_plot)

### Scatter plot with shaded area as confidence interval
svar_plot_shaded <-ggplot(df_data_summary, aes(x=Year, y=B_mean)) +
  geom_ribbon(aes(ymin=B_q025, ymax=B_q975), alpha=0.2) +
  geom_line()
print(svar_plot_shaded)

### Scatter plot with dotted line as confidence interval
svar_plot_lines <- ggplot(df_data_summary, aes(x=Year, y=B_mean)) +
  geom_line(aes(y=B_q025), colour="grey50", linetype="dotted") +
  geom_line(aes(y=B_q975), colour="grey50", linetype="dotted") +
  geom_line()
print(svar_plot_lines)

# Scatter plot with error bar as confidence interval
svar_plot_err_bar <- ggplot(df_data_summary, aes(x=Year, y=B_mean)) + 
  geom_errorbar(aes(ymin=B_q025, ymax=B_q975), width=.1) +
#  geom_line() +
  geom_point()
svar_plot_err_bar


