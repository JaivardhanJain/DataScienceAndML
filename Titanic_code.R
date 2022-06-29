install.packages("ggplot2")
install.packages("reshape2")
library(ggplot2)
Titanic$Pclass = factor(Titanic$Pclass)
Titanic$Survived = factor(Titanic$Survived)
#Titanic$Sex = factor(Titanic$Sex)

#Descriptive Statistics
summary(Titanic)
str(Titanic)

#Create bar chart using ggplot2
ggplot(Titanic, aes(x = Pclass,
color = Sex, fill = Sex)) +
  geom_bar() +
  theme_bw() +
  theme(legend.position = "top")

#Create bar chart with dodge using ggplot2
ggplot(Titanic, aes(x=Pclass, color = Sex, fill = Sex)) + 
  geom_bar() + 
  theme_bw() +
  theme(legend.position = "top")

#Create boxplot using ggplot2 (without aesthetics)

ggplot(Titanic, aes(Sex, Age)) +
  geom_boxplot()

#Create boxplot using ggplot2 (with aesthetics)

ggplot(Titanic, aes(x = Pclass, y = Age, fill = 
Sex)) + geom_boxplot(outlier.color = "dark orange",
outlier.shape = 4, notch = TRUE) +
  coord_flip() + theme_bw() + ggtitle("Boxplot
 to plot Age vs Passenger Class")

#Create histograms using ggplot2 (wihtout aesthetics)

ggplot(Titanic, aes(x = Age)) + 
  geom_histogram(binwidth = 10)

#Create histograms using ggpolt2 (with aesthetics)

ggplot(Titanic, aes(x = Age, color = Sex,
fill = Sex)) + 
geom_histogram(binwidth = 10) +
theme_bw() +
theme(legend.position = "top")

##load in-built dataset from r mtcars

mydata <- mtcars[, c(1,3,4,5,6,7)]
head(mydata)

cormat <- round(cor(mydata),2)
head(cormat)

library(reshape2)
melted_cormat <- melt(cormat)
head(melted_cormat)
ggplot(data = melted_cormat, aes(x = Var1, y = Var2, fill = value)) +
    geom_tile()



