#R samples and meta data to data frame

module load R/3.5.0

R

setwd("/OSM/CBR/AF_DATASCHOOL/input/2019-04-12_Transcritome")

library("tidyverse")

samples <- read_csv("samples.txt")

meta <- read_csv("R_161128_SHADIL_LIB2500_M002.csv", skip = 14)

filenames <- list.files(path=".", pattern="*.gz")

dfFNs0 <- as.data.frame(filenames)

FNinfo <- data.frame(do.call('rbind', strsplit(as.character(dfFNs0$filenames),'_',fixed=TRUE)))

meta

FNinfo

samples

