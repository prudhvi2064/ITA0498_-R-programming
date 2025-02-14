# Numeric, Character, and Logical Vectors
sink("putput15.txt")
numeric_data <- c(10, 20, 30)
character_data <- c("Apple", "Banana", "Cherry")
logical_data <- c(TRUE, FALSE, TRUE)

# Display content and type
cat("Numeric Data:\n")
print(numeric_data)
cat("Type:", typeof(numeric_data), "\n\n")

cat("Character Data:\n")
print(character_data)
cat("Type:", typeof(character_data), "\n\n")

cat("Logical Data:\n")
print(logical_data)
cat("Type:", typeof(logical_data), "\n")
sink(file=NULL)