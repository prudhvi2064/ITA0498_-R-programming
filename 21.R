# Given vectors
sink("output21.txt")
vector1 <- c(1,2,3,4,5,6,7,8,9)
vector2 <- c(10,11,12,13,14,15,16,17,18)

# Create an array of two 3x3 matrices
array <- array(c(vector1, vector2), dim = c(3, 3, 2))

# Print the second row of the second matrix
print(array[2,,2])

# Print the element in the 3rd row and 3rd column of the first matrix
print(array[3,3,1])
sink(file=NULL)
