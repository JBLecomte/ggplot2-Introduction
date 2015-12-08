### Simulation of a data.frame

## Number of years 
Year <- seq(1980 , 2015, 1)
nYear <- length(Year)

## Simulation of a covariates
Depth <- rnorm(nYear, 0, 3)
Sediment_type_name <- c('Fine sand', "Coarse sand", "Gravel")
Sediment_type <- sample(1:length(Sediment_type_name), nYear, replace = TRUE)

## Simulation of biomass with a depth effect
Depth_effect <- -0.5
Sediment_type_effect <- c(-0.1, 0, 0.1)
Biomass_mean <- 1 + Depth_effect*Depth + Sediment_type_effect[Sediment_type]
Biomass <- rlnorm(nYear, Biomass_mean , 1)

## Simulation of a number of fish with a depth effect
nFish <- rpois(nYear, Biomass) + 1 ## + 1 to avoid 0 values


## Sediment type as factor
Sediment_type <- factor(Sediment_type, labels = Sediment_type_name)

## Merge into a data.frame
df_data_year <- data.frame( Year = Year,
                            Depth = Depth,
                            Sediment_type = Sediment_type,
                            Biomass = Biomass,
                            nFish = nFish)
