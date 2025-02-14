# Function to get prime numbers up to a given number
#sink(file=NULL)
sink("output6.txt")
sieve_of_eratosthenes <- function(n) {
  primes <- rep(TRUE, n)
  primes[1] <- FALSE  # 1 is not a prime number
  
  for (i in 2:sqrt(n)) {
    if (primes[i]) {
      primes[seq(i^2, n, by = i)] <- FALSE
    }
  }
  
  return(which(primes))
}

# Get all prime numbers up to a given number (example: 50)
n <- 50
prime_numbers <- sieve_of_eratosthenes(n)
cat("Prime numbers up to", n, ":\n")
print(prime_numbers)
sink(file=NULL)
#sink("output2.txt")