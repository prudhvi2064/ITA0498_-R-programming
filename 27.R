# Experiment 7
# Load the women dataset
sink("output27.txt")
print(head(women))

# Create a factor for height
height_factor <- factor(women$height)
print(height_factor)
sink(file = NULL)
