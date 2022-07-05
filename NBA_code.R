library(readxl)
library(ggplot2)
NBA <- read_excel("D:\OneDrive\Desktop\Database\NBA.xlsx")
View(NBA)

#setting nba1 to the selected columns of NBA dataset
nba1 <- NBA[, c(2,3,4,5)]

cor(nba1)

#linear regression

fit = lm(nba1)
res = residuals(fit)

summary(fit)

#wins = 41.64 + 4.84(FG%) - 4.86(FG%A)
#Q3
#wins = 41.64 + 4.84(45) - 4.86(44)
#wins = 45.6

#linear regression using only FG% and FG%A

  #correlation without FG%D
  nba1 <- NBA[, c(2,3,4)]

  cor(nba1)

fit = lm(nba1)
res = residuals(fit)
  
summary(fit)

#wins = 41.64 + 4.84(FG%) - 4.86(FG%A)
#Q3
#wins = 41.64 + 4.84(45) - 4.86(44)
#wins = 45.6

#linear regression using only FG%D
View(nba1)
fit3 = lm(nba1$Wins ~ nba1$`Field Goal % Difference`)
res3 = residuals(fit3)

summary(fit3)

#wins = 40.87 + 4.85(FG%D)
#Q3
#wins = 40.87 + 4.85(1)
#wins = 45.72


#Q5

#Yes there is a significant relationship between number of wins and the two 
#independent variables since the p_value of FG% and FG%A are < 0.005



