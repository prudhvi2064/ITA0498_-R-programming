# Experiment 8
# Create a random sample from LETTERS
sink("output28.txt")
set.seed(123)
letter_sample <- sample(LETTERS, 10, replace = TRUE)
letter_factor <- factor(letter_sample)

# Extract first five levels
print(levels(letter_factor)[1:5])
sink(file = NULL)
