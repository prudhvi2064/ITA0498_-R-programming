# Define a vector and dimensions
sink("output17.txt")
values <- 1:12
dimensions <- c(2, 3, 2) # 2 rows, 3 columns, 2 layers

# Create an array with dimension names
dim_names <- list(c("Row1", "Row2"), c("Col1", "Col2", "Col3"), c("Layer1", "Layer2"))
array_data <- array(values, dim = dimensions, dimnames = dim_names)

# Print array
cat("Created Array:\n")
print(array_data)
sink(file=NULL)