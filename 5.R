# Function to generate Fibonacci sequence
#sink(file=NULL)
sink("output5.txt")
fibonacci <- function(n) {
  fib <- numeric(n)
  fib[1] <- 0
  fib[2] <- 1
  for (i in 3:n) {
    fib[i] <- fib[i-1] + fib[i-2]
  }
  return(fib)
}

# Get the first 10 Fibonacci numbers
fib_numbers <- fibonacci(10)
cat("First 10 Fibonacci numbers:\n")
print(fib_numbers)
sink(file=NULL)
#sink("output2.txt")