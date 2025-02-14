# Define elements
sink("outpur19.txt")
vector_data <- c(1, 2, 3, 4, 5)
matrix_data <- matrix(1:9, nrow = 3)
function_data <- function(x) x^2

# Create a list
my_list <- list(Vector = vector_data, Matrix = matrix_data, Function = function_data)

# Print list content
cat("List Content:\n")
print(my_list)
sink(file=NULL)