#set the working directory
setwd("/OSM/CBR/AF_DATASCHOOL/output/bro915/")
#load tidyverse
library("tidyverse")
#load objects and fix					
samples <- read_csv("FilesDF.csv")					

list_file <- list.files(full.names=T, pattern = "*.out")%>%
  lapply(read_csv) %>%
  bind_rows

files <- read_csv("FilesDF.csv")

files$filenames <- gsub(".gz", "", files$filenames)

tidyDF <- merge(files, list_file, by=c("filenames"))

write_csv(tidyDF, path = "/OSM/CBR/AF_DATASCHOOL/output/bro915/TidyDF.csv")

q()

n


