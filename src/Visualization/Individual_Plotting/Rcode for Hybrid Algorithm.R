library(readxl)
library(ggplot2)
library(labeling)
library(farver)

setwd("C:/Users/malli/OneDrive/Documents/mino")

data <- read_excel("database.xlsx")

ggplot(data,mapping = aes(x=H_Fitness,
                          y=H_Load)) +
  geom_point(color = "navy")+
  ggtitle("Scatterplot for Hybrid Algorithm")

