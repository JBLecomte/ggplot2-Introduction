###############################################################################
### Simulation of a data.frame based on the location of the survey
###############################################################################

### load the data from surveys for covariates and locations
load('Data/df_data_survey.RData')

## Create a numeruc variable for the AREA
df_data$AREA_num <- as.numeric(df_data$AREA)

## Number of years 
nYear <- length(levels(df_data$Year_fac))

## number of observation per year
nObs_t <- table(df_data$YeaB_fac)

## Simulation of a number of fish with a depth effect, Temperature, and Area
Depth_effect <- - 0.7
Temperature_effect <- 0.5
AREA_effect <- c(0, 2)
Year_effect <- sort(rnorm(nYear, 0, 0.5))

### Create a Year_id variable to assign an effet per year
Year_id <- rep(NA, length(df_data$Year_fac))
Year_id <- df_data$Year_fac
levels(Year_id) <- as.character(1:nYear)
Year_id <- as.numeric(Year_id)

### Linear expression of the intensity parameter (Poisson) of the number of fish
lambda_obs <- exp(1 + Depth_effect*df_data$Depth +
                    Temperature_effect*df_data$Temp +
                    AREA_effect[df_data$AREA_num] +
                    Year_effect[Year_id])

### Draw the number of fish
nFish <- rpois(length(lambda_obs), lambda_obs)

## simulation of a quantity of biomass
Biomass_perFish <- 0.9
Biomass <- NULL
for ( i in 1:length(nFish)){
  if(nFish[i]>0){
    Biomass[i] <- sum(rlnorm(nFish[i], Biomass_perFish, 0.5))
  }else{ Biomass[i] <- 0 }
}

df_data$nFish <- nFish
df_data$Biomass <- Biomass


## Create a data.frame which summarize the df_data by Year
df_summary <- df_data %>% group_by(Year) %>% summarise(
                    B_mean=mean(Biomass),
                    B_median=median(Biomass),
                    B_sd=sd(Biomass),
                    B_q025=quantile(Biomass, probs = 0.025),
                    B_q05=quantile(Biomass, probs = 0.05),
                    B_q10=quantile(Biomass, probs = 0.10),
                    B_q50=quantile(Biomass, probs = 0.50),
                    B_q90=quantile(Biomass, probs = 0.90),
                    B_q95=quantile(Biomass, probs = 0.95),
                    B_q975=quantile(Biomass, probs = 0.975))

save(df_data, file = 'Data/df_data_survey.RData')
