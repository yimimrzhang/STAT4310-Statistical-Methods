x<-c(1,1,1,2,2,2,3,3,3)
y<-c(4,5,6,5,6,7,6,7,8)

cor(y,x)            # Compute correlation coef

reg <- lm(y~x)      # LS fit
summary(reg) 