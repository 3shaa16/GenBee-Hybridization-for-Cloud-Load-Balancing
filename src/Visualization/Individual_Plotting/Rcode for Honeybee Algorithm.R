library(readxl)
library(ggplot2)
library(labeling)
library(farver)

setwd("C:/Users/malli/OneDrive/Documents/mino")

data <- read_excel("database.xlsx")

ggplot(data,mapping = aes(x=HB_Fitness,
                          y=HB_Load)) +
  geom_point(color = "royalblue")+
  ggtitle("Scatterplot for Honey Bee Algorithm")



