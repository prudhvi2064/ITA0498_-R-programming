# Create a sequence of numbers from 20 to 50
#sink(file=NULL)
sink("output3.txt")
sequence_20_50 <- 20:50
cat("Sequence from 20 to 50:\n", sequence_20_50, "\n\n")

# Find the mean of numbers from 20 to 60
mean_20_60 <- mean(20:60)
cat("Mean of numbers from 20 to 60:", mean_20_60, "\n\n")

# Find the sum of numbers from 51 to 91
sum_51_91 <- sum(51:91)
cat("Sum of numbers from 51 to 91:", sum_51_91, "\n")
sink(file=NULL)
#sink("output2.txt")