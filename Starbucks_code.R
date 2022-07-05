library(readxl)
library(ggplot2)
Starbucks <- read_excel(""D:\OneDrive\Desktop\Database\Starbucks.xlsx"")
View(Starbucks)

#Performing the correlation
cor(Starbucks)

#Plotting the correlation 
ggplot(Starbucks, aes(x = Income, y = Amount))+ 
geom_point()+
geom_smooth(method = 'lm')

#linear regression

fit2 = lm(Starbucks$Amount ~ Starbucks$Income)
res = residuals(fit2)

summary(fit2)

#multi linear regression

fit = lm(Starbucks)
res = residuals(fit)

summary(fit)

#linear regression

fit2 = lm(Starbucks$Days ~ Starbucks$Cups)
res = residuals(fit2)

summary(fit2)

#Days = 6.08 + 1.05(Cups)

