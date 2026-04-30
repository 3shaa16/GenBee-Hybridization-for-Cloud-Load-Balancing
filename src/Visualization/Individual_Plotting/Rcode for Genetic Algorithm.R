install.packages("readxl")
install.packages("ggplot2")
install.packages("labeling")
install.packages("farver")
library(readxl)
library(ggplot2)
library(labeling)
library(farver)

setwd("C:/Users/malli/OneDrive/Documents/mino")

data <- read_excel("database.xlsx")

ggplot(data,mapping = aes(x=GA_Fitness,
                          y=GA_Load)) +
  geom_point(
    color = "skyblue3")+
  ggtitle("Scatterplot for Genetic Algorithm")


