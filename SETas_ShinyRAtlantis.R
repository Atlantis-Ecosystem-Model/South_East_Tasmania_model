## SETas Demos model ShinyRAtlantis
## https://github.com/Atlantis-Ecosystem-Model/shinyrAtlantis
## Used to explore model input files - the intial conditions (parameters) of the model
## Packages
# install.packages(c("shiny", "dplyr", "DT", "ggplot2", "ncdf4", "stringr"))
# devtools::install_github("shanearichards/shinyrAtlantis")
# ?shinyrAtlantis
rm(list=ls())
library(shinyrAtlantis)
library(stringr)
library(tidyverse)

###Files required by different shiny packages
setwd("Your/working/directory/with/input/files/")


prm.file <- "Biology.prm"
bgm.file <- "Geography.bgm"
grp.file <- "Functional_groups.csv"
nc.file <-  "Initial_condition.nc"

exchange.file    <- "inputs/hydro.nc"
salinity.file    <- "inputs/salt.nc"
temperature.file <- "inputs/temp.nc"

cum.depths <- c(0, 20, 50, 100, 250, 700, 3000)  # cumulative water layer depths

######################################################
# Explore initial conditions files - habitat coverage, group N (mg N m3), nums, StructN, ResN per box
obj_int <- make.sh.init.object(bgm.file, nc.file)
sh.init(obj_int)

######################################################
# Explore forcing files - group values, distributions, feeding, migration, recruitment
obj <- make.sh.prm.object(bgm.file, grp.file, prm.file)
sh.prm(obj)

######################################################
# to explore diet files - mum, reserve, structure, total weight, growth
sh.feeding(grp.file, prm.file, nc.file)
sh.init(sh.feeding)

######################################################
# to explore diet files - mum, reserve, structure, total weight, growth
#rm(list=ls())
csv_name  <- "SETastemplate"
make.init.csv(grp.file, bgm.file, cum_depth, csv.name)

######################################################
# Explore forcing files - hydro, salt and temp
#uses all the iput files
obj_force <- make.sh.forcings.object(
  bgm.file         = bgm.file,
  exchange.file    = exchange.file,
  cum.depth        = cum.depth,
  temperature.file = temperature.file,
  salinity.file    = salinity.file
)
sh.forcings(obj_force)
