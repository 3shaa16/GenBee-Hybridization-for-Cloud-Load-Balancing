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

data <- data[, c("Iterations", "GA_Fitness", "GA_Load", "HB_Fitness", "HB_Load", "H_Fitness", "H_Load")]

GA_load_avg <- mean(data$GA_Load)
HB_load_avg <- mean(data$HB_Load)
H_load_avg <- mean(data$H_Load)

df <- data.frame(Category = c("Genetic Algorithm", "Honey Bee Algorithm", "Hybrid Algorithm"),
                 Average_Load = c(GA_load_avg, HB_load_avg, H_load_avg))

p <- ggplot(df, aes(x = Category, y = Average_Load, fill = Category)) +
  geom_bar(stat = "identity",width = 0.5) +  # Adjust width as needed
  scale_fill_manual(values = c("skyblue2", "royalblue1", "navy")) +
  labs(x = "Load Type", y = "Average Load Value") 
  #ggtitle("Average Load Values for Algorithms")

p <- p +
  geom_segment(aes(x = Category, xend = Category, y = Average_Load, yend = 0),
               linetype = "dotted") +
  geom_text(aes(label = round(Average_Load, 2)), vjust = -0.5, color = "black", position = position_dodge(width =0.9))

print(p)

