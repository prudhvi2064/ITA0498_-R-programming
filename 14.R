# Read CSV file
sink("output14.txt")
# Load necessary library

library(utils)

# URL of the CSV file
url <- "C:/Users/prudh/Downloads/R programming/vehicle.csv"

# Read the CSV file directly from the URL
titanic_data <- read.csv(url, header = TRUE, stringsAsFactors = FALSE)

# Display the first few rows of the dataset
head(titanic_data)

sink(file=NULL)
