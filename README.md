Contents
--------

- Directories 
- Plan of work
- Workflow

Directories
--

**Main.R** is the master R file which controls the analysis.

**Data/**   - datasets organize in subdirectories (i.e. Climate).

**Doc/**  - Documentations of data and analysis, which are pdf files generated with knitr and latex:

      1. Climate: Description of available climate variables for the QCS.
      2. DescriptiveModels: Methods available to model the association between POP productivity and climate variables.
**figure/** - save figures in the right subdirectory (i.e. Climate).

**R/** - All R codes organized in subdirectories:

- **Fun/** R functions required to run the analysis  
- **Climate/** R code to load and plot climate data 


Plan of work
--

**Big picture**

Implementing Ecosystem Approaches to Management in the Pacific Ocean Perch (POP) Stock Assessment Process in the Queen Charlotte Sound (QCS).

Climatic data, describing the QCS ecosystem, have been collected and are available for this project (cf Doc/Climate). 

The stock assessment models to use as the operating model in these simulations is the age-structured model for POP. This approach will:

1. test alternative harvest strategies in order to identify strategies that can respond best to ecosystem impacts on fish productivity,

2. test the explanatory or predictive power of including ecosystem considerations when providing advice on total allowable catches.


**Current tasks**



- The POP productivity is investigated regarding climatic variables. Statistical analyses such as ANOVA, Generalized Linear, Non-linear Models, and Time Series Analyses will be used to: 
 1. identify any coherent signals and trends in POP recruitment indices;
 2. identify ecological processes (and interactions between factors) that significantly relate to POP recruitment indices.
 
- Write Readme File within /R subdirectories when needed.


**Ideas**

- For almost every climatic variables, monthly or daily data are available. At first, identifying interaction between POP recruitment and climatic variables will be performed with the yearly mean of each climatic variable. However, the interaction between POP recruitment and climatic variables could be investigated with other statistics (e.g. maximum temperature within a year)..
- The statistical analysis (e.g. GLM, GAM, Time Series) should be run until 2006 because of the lag in the catch (young fish are not sampled).


**Potential tasks**




Workflow
----------------------------



Contact info
--
Jean-Baptiste Lecomte <jeanbaptiste.lecomte@dfo-mpo.gc.ca>

Andrew Edwards <andrew.edwards@dfo-mpo.gc.ca>




