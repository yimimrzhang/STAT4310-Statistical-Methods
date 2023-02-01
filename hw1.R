# Problem 3.21
# ============
eggs <- read.csv("Data/prob3-21.txt")         # Reads in feeder data
mean(eggs$ratio)                              # Mean of DDE/PCB ratios, all data
median(eggs$ratio)                            # Median of ratios for all data
mean(eggs$ratio[eggs$feeder=="Terrestrial"])  # Mean of ratios for terrestrial data
mean(eggs$ratio[eggs$feeder=="Aquatic"])      # Mean of ratios for aquatic data
median(eggs$ratio[eggs$feeder=="Terrestrial"])# Median of ratios for terrestrial data
median(eggs$ratio[eggs$feeder=="Aquatic"])    # Median of ratios for aquatic data


# Additional Problem 1
# ====================
nitrogen <- read.csv("Data/nitrogen.txt") # Reads in the nitrogen data
summary(nitrogen,quantile.type=2)         # Summary of nitrogen data
sd(nitrogen$nitrogen)                     # SD of nitrogen values
nitrogen$nitrogen[31] <- 15.19            # Changes 31th value to 15.19
sd(nitrogen$nitrogen)                     # Recomputes the SD
nitrogen$nitrogen[31] <- 151.9            # Changes 31th value to 151.9
sd(nitrogen$nitrogen)                     # Recomputes the SD
