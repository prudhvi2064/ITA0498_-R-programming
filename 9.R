# Function to find factors
#sink(file=NULL)
sink("output9.txt")
find_factors <- function(n) {
  factors <- which(n %% 1:n == 0)
  return(factors)
}

# Example: Find factors of 36
num <- 36
cat("Factors of", num, ":\n")
print(find_factors(num))
sink(file=NULL)
#sink("output2.txt")