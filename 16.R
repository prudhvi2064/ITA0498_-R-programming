# 5x4 Matrix
sink("output16.txt")
matrix_5x4 <- matrix(1:20, nrow = 5, ncol = 4)
cat("5x4 Matrix:\n")
print(matrix_5x4)

# 3x3 Matrix with Labels, filled by rows
matrix_3x3 <- matrix(1:9, nrow = 3, byrow = TRUE, 
                     dimnames = list(c("R1", "R2", "R3"), c("C1", "C2", "C3")))
cat("\n3x3 Matrix with Labels (Filled by Rows):\n")
print(matrix_3x3)

# 2x2 Matrix with Labels, filled by columns
matrix_2x2 <- matrix(1:4, nrow = 2, byrow = FALSE,
                     dimnames = list(c("Row1", "Row2"), c("Col1", "Col2")))
cat("\n2x2 Matrix with Labels (Filled by Columns):\n")
print(matrix_2x2)
sink(file=NULL)