library(readxl)
Dominos <- read_excel("D:\OneDrive\Desktop\Database\Dominos.xlsx")
View(Dominos)

#Perfrom the one-tailed t test.
t.test(Dominos$Time, alternative = "less", mu = 173.62)

#Perform the one-tailed t-test without alternative


