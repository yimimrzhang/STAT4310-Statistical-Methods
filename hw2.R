# ========== #
# Homework 2 #
# ========== #

# ==================== #
# Additional Problem 1 #
# ==================== #
gesell <- read.csv("gesell.txt",header=T)  # Reads in Gesell data
summary(gesell)                                 # Data summary

# Part (a): Scatterplot of Gesell scores vs. ages
# ===============================================
age <- gesell$age                               # Ages of children
score <- gesell$score                           # Gesell scores
plot(age,score,cex.axis=1.5,cex.lab=1.8,pch=16, # Scatterplot of score vs.
     xlab="Age at First Word (months)",cex=1.5,    #   age with axis labels
     ylab="Gesell Adaptive Score",mgp=c(2.7,1,0),  #   and a title
     main="Gesell Adaptive Score vs. Age at First Word (Months)",cex.main=1.6)

# Part (b): Regression of Gesell score on age, plotted on scatterplot
# ===================================================================
reg <- lm(score~age)         # Least squares regression of score on age
summary(reg)                 # Regression summary
abline(reg$coef,lwd=2)       # Plots the regression line

# Part (c): Regression residuals
# ==============================
reg$resid                    # Vector of model residuals

# Part (e): Removes child #18 (age=42) and repeats previous analyses
# ==================================================================
age2 <- age[age<42]          # Keeps all ages except the one at age 42
score2 <- score[age<42]      # Keeps all scores except the one at age 42
reg2 <- lm(score2~age2)      # Regression without the high leverage value
summary(reg2)                # Regression summary
abline(reg2$coef,lwd=2,lty=8)# Plots the new regression line
text(30,105,"The dashed line is the regression",cex=1.3)
text(30,101,"line without case 18.",cex=1.3)
