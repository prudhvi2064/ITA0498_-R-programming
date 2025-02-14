# Define two vectors
sink("output18.txt")
vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vector2 <- c(9, 8, 7, 6, 5, 4, 3, 2, 1)

# Combine into an array
array_3x3x2 <- array(c(vector1, vector2), dim = c(3, 3, 2))
cat("3x3x2 Array:\n")
print(array_3x3x2)
sink(file=NULL)