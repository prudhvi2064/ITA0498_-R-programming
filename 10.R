# Create a random vector
sink("sample_out.txt")
set.seed(123)  # Setting seed for reproducibility
random_vector <- sample(1:100, 10)

# Find maximum and minimum values
max_value <- max(random_vector)
min_value <- min(random_vector)

cat("Vector:\n", random_vector, "\n")
cat("Maximum value:", max_value, "\n")
cat("Minimum value:", min_value, "\n")
sink(file=NULL)
