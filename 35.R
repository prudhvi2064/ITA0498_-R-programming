# Load necessary libraries
library(datasets)
library(ggplot2)
library(dplyr)

# Load the ChickWeight dataset
data("ChickWeight")

# --- Task 5(a): Box Plot of "weight" Grouped by "Diet" ---
ggplot(ChickWeight, aes(x = factor(Diet), y = weight, fill = factor(Diet))) +
  geom_boxplot() +
  labs(title = "Box Plot of Weight Grouped by Diet", x = "Diet", y = "Weight") +
  theme_minimal()

# --- Task 5(b): Histogram of "weight" for Diet 1 ---
ggplot(subset(ChickWeight, Diet == 1), aes(x = weight)) +
  geom_histogram(binwidth = 10, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Weight for Diet 1", x = "Weight", y = "Frequency") +
  theme_minimal()

# --- Task 5(c): Scatter Plot of "Weight" vs "Time" Grouped by Diet ---
ggplot(ChickWeight, aes(x = Time, y = weight, color = factor(Diet))) +
  geom_point(alpha = 0.7) +
  geom_smooth(method = "lm", se = FALSE, linetype = "dashed") +  # Add trend lines per Diet
  labs(title = "Scatter Plot of Weight vs Time Grouped by Diet", x = "Time", y = "Weight") +
  theme_minimal()
