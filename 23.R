# Given columns and rows
sink("output23.txt")
column1 <- c(1, 2, 3)
column2 <- c(4, 5, 6)
column3 <- c(7, 8, 9)
column4 <- c(10, 11, 12)

# Create an array
array_3d <- array(c(column1, column2, column3, column4), dim = c(3, 4, 2))

# Display the array
print(array_3d)
sink(file = NULL)