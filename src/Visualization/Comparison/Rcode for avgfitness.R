library(readxl)
library(ggplot2)
library(labeling)
library(farver)

setwd("C:/Users/malli/OneDrive/Documents/mino")

data <- read_excel("database.xlsx")

data <- data[, c("Iterations", "GA_Fitness", "GA_Load", "HB_Fitness", "HB_Load", "H_Fitness", "H_Load")]

GA_fitness_avg <- mean(data$GA_Fitness)
HB_fitness_avg <- mean(data$HB_Fitness)
H_fitness_avg <- mean(data$H_Fitness)

df <- data.frame(Category = c("Genetic Algorithm", "Honey Bee Algorithm", "Hybrid Algorithm"),
                 Average_fitness = c(GA_fitness_avg, HB_fitness_avg, H_fitness_avg))

p <- ggplot(df, aes(x = Category, y = Average_fitness, fill = Category)) +
  geom_bar(stat = "identity",width = 0.5) +  # Adjust width as needed
  scale_fill_manual(values = c("skyblue2", "royalblue1", "navy")) +
  labs(x = "Fitness Type", y = "Average Fintess Value") 
  #ggtitle("Average Fitness Values for Algorithms")

p <- p +
  geom_segment(aes(x = Category, xend = Category, y = Average_fitness, yend = 0),
               linetype = "dotted") +
  geom_text(aes(label = round(Average_fitness, 2)), vjust = -0.5, color = "black", position = position_dodge(width =0.9))

print(p)

