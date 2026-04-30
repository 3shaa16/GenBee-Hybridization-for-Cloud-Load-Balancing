install.packages("readxl")
install.packages("ggplot2")
library(readxl)
library(ggplot2)

# Change the working directory to the desktop
setwd("C:/Users/malli/OneDrive/Documents/mino")

# Read the Excel file
data <- read_excel("database.xlsx")


# Plot the graph
p <- ggplot(data, aes(x = GA_Load, y = GA_Fitness)) +
  geom_point(aes(color = "Genetic Algorithm")) +
  geom_point(aes(x = HB_Load, y = HB_Fitness, color = "Honey Bee Algorithm")) +
  geom_point(aes(x = H_Load, y = H_Fitness, color = "Hybrid Algorithm")) +
  labs(x = "Load", y = "Fitness Value", color = "Algorithm") +
  #ggtitle("Scatterplot of Algorithms") 
  scale_color_manual(values = c("Genetic Algorithm" = "skyblue2", 
                                "Honey Bee Algorithm" = "royalblue1", 
                                "Hybrid Algorithm" = "navy")) +
  theme(legend.position = "top")

print(p)

