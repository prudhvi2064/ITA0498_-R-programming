# Create three arrays
sink("output22.txt")
array1 <- matrix(1:3, nrow = 1)
array2 <- matrix(4:6, nrow = 1)
array3 <- matrix(7:9, nrow = 1)

# Combine the arrays row-wise
combined_array <- rbind(array1, array2, array3)

# Print the combined array
print(combined_array)
sink(file = NULL)
