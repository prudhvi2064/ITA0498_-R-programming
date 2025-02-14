# Set seed for reproducibility (optional)
#sink(file=NULL)
sink("output4.txt")
set.seed(123)  

# Generate a vector of 10 random integers between -50 and 50
random_vector <- sample(-50:50, 10, replace = TRUE)

# Print the generated vector
cat("Random vector with 10 integers between -50 and 50:\n")
print(random_vector)
sink(file=NULL)
#sink("output2.txt")