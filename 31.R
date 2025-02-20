# Load necessary libraries
sink("output31.txt")
library(datasets)
library(caret)
library(nnet)  # Load the 'nnet' package for multinom function

# Load the iris dataset
data(iris)

# Set seed for reproducibility
set.seed(123)

# Split data into training (80%) and testing (20%)
trainIndex <- createDataPartition(iris$Species, p=0.8, list=FALSE)
trainData <- iris[trainIndex, ]
testData <- iris[-trainIndex, ]

# Train a logistic regression model
model <- multinom(Species ~ Petal.Length + Petal.Width, data = trainData)

# Predict probabilities on test data
pred_probs <- predict(model, testData, type = "probs")

# Predict species based on probabilities
pred_classes <- predict(model, testData)

# Create confusion matrix
conf_matrix <- table(Predicted = pred_classes, Actual = testData$Species)
print(conf_matrix)
sink(file = NULL)
