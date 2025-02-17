# Create a sequence of even integers greater than 50
sink("output24.txt")
even_integers <- seq(52, by = 2, length.out = 15)

# Create the 5x3 array
even_array <- matrix(even_integers, nrow = 5, ncol = 3)

# Display the array
print(even_array)
sink(file=NULL)