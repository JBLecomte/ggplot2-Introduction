################################################################################
### Simulation of a data.frame based on the location of the survey
################################################################################

### load the data from surveys for covariates and locations
load('Data/df_data_survey.RData')
df_data$AREA_num <- as.numeric(df_data$AREA)

## Number of years 
nYear <- length(levels(df_data$Year_fac))

## number of observation per year
nObs_t <- table(df_data$Year_fac)

## Simulation of a number of fish with a depth effect, Temperature, and Area
Depth_effect <- -0.5
Temperature_effect <- 0.5
AREA_effect <- c(-1, 0)


lambda_obs <- exp(2 + Depth_effect*df_data$Avg_net_depth +
                    Temperature_effect*df_data$Avg_net_temp +
                    AREA_effect[df_data$AREA_num])

nFish <- rpois(length(lambda_obs), lambda_obs)

## simulation of a quantity of biomass
Biomass_perFish <- 0.9
Biomass <- NULL
for ( i in 1:length(nFish)){
  if(nFish[i]>0){
  Biomass[i] <- sum(rlnorm(nFish[i], Biomass_perFish, 0.1))
  }else{ Biomass[i] <- 0 }
}

df_data$nFish <- nFish
df_data$Biomass <- Biomass
