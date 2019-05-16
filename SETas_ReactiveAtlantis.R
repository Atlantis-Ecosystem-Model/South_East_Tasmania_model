##SETas Demo model - ReactiveAtlantis toolbox
#https://github.com/jporobicg/ReactiveAtlantis

rm(list=ls())

## Installing packages
## install.packages('devtools')
## library("devtools")
## install_github('Atlantis-Ecosystem-Model/ReactiveAtlantis', force=TRUE, dependencies=FALSE)

library("ReactiveAtlantis")

##Files needed:
setwd("Your/working/directory/with/input/files/") # need to change to where your output files are stored on your computer


# model input files and setting:
grp.csv     <- 'Functional_groups.csv'
bgm.file    <- 'Geography.bgm'
prm.file    <- 'Biology.prm'
nc.initial  <- 'Initial_condition.nc'
cum.depths  <- c(0, 20, 50, 100, 250, 700, 3000)    # cumulative water layer depths

#outputs:
nc.file     <- 'output/outputs.nc' # current run
nc.old      <- 'output/previous_run.nc' # old run
biom        <- 'output/BiomIndx.txt'
diet.file   <- 'output/outputsDietCheck.txt'
bio.age     <- 'output/outputsAgeBiomIndx.txt' ## optional file. just if you want to check the predation by age
yoy.file    <- 'output/outputsYOY.txt'

#####Tool commands
#Compare outputs and Biomass visualization
compare(nc.file, nc.out.old = NULL, grp.csv, bgm.file, cum.depths)## new run
compare(nc.file, nc.old, grp.csv, bgm.file, cum.depths) ## file from previuos run Not available for this example

#Predation analysis from the Atlantis output
predation(biom, grp.csv, diet.file, age.biomass = NULL) ## No predation by Age
predation(biom, grp.csv, diet.file) ##

#Exploring predator-prey interactions from the initial conditions
feeding.mat(prm.file, grp.csv, nc.initial, bgm.file, cum.depths)

#Atlantis food web and trophic level composition
food.web(diet.file, grp.csv)

#Growth of primary producers and limiting factors
growth.pp(nc.initial, grp.csv, prm.file, nc.file)

#Analysis of recruitment and primary production
recruitment.cal(nc.initial, nc.file, yoy.file, grp.csv, prm.file)
