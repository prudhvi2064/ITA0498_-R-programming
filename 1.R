sink("output1.txt")
name <- readline(prompt = "Enter your name: ")
age <- as.numeric(readline(prompt = "Enter your age: "))  # Use as.numeric to handle numbers correctly

# Checking if age is a valid number
if (is.na(age)) {
  cat("Invalid age input. Please enter a numeric value.\n")
} else {
  # Displaying the values
  cat("Your name is:", name, "\n")
  cat("Your age is:", age, "\n")
  
  # Printing the R version
  cat("R version installed:", R.version.string, "\n")
}
sink(file=NULL)
