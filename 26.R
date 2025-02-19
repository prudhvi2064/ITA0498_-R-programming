# Experiment 6
# Load airquality dataset
sink("output26.txt")
print(head(airquality))

# Check if it's a data frame
print(is.data.frame(airquality))

# Order by first and second column
ordered_data <- airquality[order(airquality[,1], airquality[,2]), ]
print(head(ordered_data))

# Remove 'Solar.R' and 'Wind' columns
filtered_data <- ordered_data[, !(names(ordered_data) %in% c("Solar.R", "Wind"))]
print(head(filtered_data))
sink(file = NULL)
