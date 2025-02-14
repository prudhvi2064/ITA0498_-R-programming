# Generate random normal distribution numbers
sink("output13.txt")
set.seed(123)
random_numbers <- rnorm(100, mean = 0, sd = 1)

# Count occurrences
table_values <- table(round(random_numbers, 1))
cat("Occurrences of each rounded value:\n")
print(table_values)
sink(file=NULL)
