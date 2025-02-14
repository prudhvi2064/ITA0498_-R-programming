# Unique characters from a string
sink("output11.txt")
string_input <- "statistics"
unique_chars <- unique(strsplit(string_input, "")[[1]])
cat("Unique characters in the string:\n")
print(unique_chars)

# Unique numbers from a vector
num_vector <- c(1, 2, 3, 2, 4, 5, 1, 6, 7, 3)
unique_numbers <- unique(num_vector)
cat("Unique numbers in the vector:\n")
print(unique_numbers)
sink(file=NULL)
