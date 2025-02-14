# Loop through numbers from 1 to 100
#sink(file=NULL)
sink("output7.txt")
for (i in 1:100) {
  if (i %% 3 == 0 & i %% 5 == 0) {
    cat("FizzBuzz\n")
  } else if (i %% 3 == 0) {
    cat("Fizz\n")
  } else if (i %% 5 == 0) {
    cat("Buzz\n")
  } else {
    cat(i, "\n")
  }
}
sink(file=NULL)
#sink("output2.txt")