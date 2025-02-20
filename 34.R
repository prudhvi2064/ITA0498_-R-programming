# Load necessary libraries
library(datasets)
library(reshape2)
library(dplyr)

# Load the ChickWeight dataset
data("ChickWeight")

# --- Task 1: Order Data by 'weight' Grouped by 'Diet' and Extract Last 6 Records ---
ordered_chick <- ChickWeight %>%
  group_by(Diet) %>%
  arrange(weight, .by_group = TRUE)  # Arrange weight in ascending order within each Diet group

last_6_records <- tail(ordered_chick, 6)
print("Last 6 Records from Ordered Data:")
print(last_6_records)

# --- Task 2(i): Perform Melting with 'Chick', 'Time', 'Diet' as ID Variables ---
molten_chick <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
print("Molten ChickWeight Data:")
print(head(molten_chick))

# --- Task 2(ii-a): Cast Function to Display Mean Weight Grouped by Diet ---
mean_weight_by_diet <- dcast(molten_chick, Diet ~ variable, mean, na.rm = TRUE)
print("Mean Weight Grouped by Diet:")
print(mean_weight_by_diet)

# --- Task 2(ii-b): Cast Function to Display Mode Weight Grouped by Diet ---
# Function to compute mode
get_mode <- function(x) {
  unique_x <- unique(x)
  unique_x[which.max(tabulate(match(x, unique_x)))]
}

# Compute mode for weight grouped by Diet
mode_weight_by_diet <- molten_chick %>%
  filter(variable == "weight") %>%
  group_by(Diet) %>%
  summarise(Mode_Weight = get_mode(value))

print("Mode Weight Grouped by Diet:")
print(mode_weight_by_diet)

