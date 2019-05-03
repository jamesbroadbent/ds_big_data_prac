#R samples and meta data to data frame
#load R module
module load R/3.5.0
#start R
R
#set the working directory
setwd("/OSM/CBR/AF_DATASCHOOL/input/2019-04-12_Transcritome")
#load tidyverse
library("tidyverse")
#load objects and fix
samples <- read_csv("samples.txt")
names(samples) <- c("treatment", "sample_name")
samples$"External ID" <- with(samples, paste0(treatment, sample_name))

meta <- read_csv("R_161128_SHADIL_LIB2500_M002.csv", skip = 14)
meta1 <- data.frame(do.call('rbind', strsplit(as.character(meta$"Sample/Name"),'_',fixed=TRUE)))
meta2 <- bind_cols(meta1, meta[,-1])
meta2 %>% 
  rename(
    name = X1,
    sample = X2
    ) -> meta3

filenames <- list.files(path=".", pattern="*.gz")
dfFNs0 <- as.data.frame(filenames)
FNinfo <- data.frame(do.call('rbind', strsplit(as.character(dfFNs0$filenames),'_',fixed=TRUE)))
FNinfo1 <- data.frame(do.call('rbind', strsplit(as.character(FNinfo$X12),'.',fixed=TRUE)))
FNinfo2 <- bind_cols(FNinfo[,-12], FNinfo1[,-c(3)])
FNinfo2 %>% 
  rename(
    sample = X4,
	rep = X12
    ) -> FNinfo3
	
#Join meta and file name info
Mdf0 <- full_join(meta3, FNinfo3)
#Join Mdf0 and sample info
Mdf1 <- inner_join(Mdf0, unique(samples))

head(Mdf1)

write_csv(Mdf1, path = "/OSM/CBR/AF_DATASCHOOL/output/bro915/FilesDF.csv")

q()

n



