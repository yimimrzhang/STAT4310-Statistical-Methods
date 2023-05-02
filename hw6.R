# ========== #
# Homework 6 #
# ========== #

# Problem 10.15  
# =============
# install.packages("fastR2")          # Install fastR2 package 
library(fastR2)                       # Load the package
wilson.ci(230,1500,conf.level=0.95)   # One-sample plus-four CI for a proportion

prop.test(230,1500,p=0.5,             # One-sample z-test for a proportion
          alternative="greater",      #  p: hypothesized proportion
          correct=FALSE)              #  correct=TRUE for small sample correction 



# Additional Problem 1
# ====================
stare <- read.csv("stare.txt")          # Reads in the stare crossing time data
boxplot(time~group,data=stare,names=         # Boxplot of crossing times by stare
          c("No Stare","Stare"),xlab="Group",        #   group with plot labels, axis labels,
        ylab="Crossing Time (seconds)",main=       #   and a title
          "Boxplot of Crossing Times by Group",
        cex.lab=1.5,cex.axis=1.5,cex.main=1.6)
means <- tapply(stare$time,stare$group,mean) # Computes the 2 group means
sdevs <- tapply(stare$time,stare$group,sd)   # Computes the 2 group SDs
t.test(time~group,data=stare,                # Two-sided t-test to compare crossing
       alternative="two.sided",mu=0)              #   times between groups



# Additional Problem 2
# ====================
hand <- read.csv("hand.txt",header=T)  # Reads in the dexterity experiment data
diff <- hand$mainhand-hand$offhand          # Differences in no boxes filled (main-off)
mean(diff)                                  # Mean difference
sd(diff)                                    # SD of the differences
t.test(hand$main,hand$offhand,paired=T,     # One-sided paired t-test to compare dexterity
  alternative="greater")                    #   between mainhand and offhand
t.test(diff~hand$sex)                       # Two-sample t-test of differences by sex
sdevs <- tapply(diff,hand$sex,sd)           # SDs of differences by sex




