# Load necessary libraries
library(datasets)
library(ggplot2)

# Load the airquality dataset
data("airquality")

# --- Task 1: Handle Missing Values ---
# Function to handle missing values
handle_na <- function(df) {
  for (col in names(df)) {
    na_count <- sum(is.na(df[[col]]))
    na_percentage <- (na_count / nrow(df)) * 100
    
    if (na_percentage < 10) {
      df <- df[!is.na(df[[col]]), ]  # Drop rows with missing values if <10%
    } else {
      df[[col]][is.na(df[[col]])] <- mean(df[[col]], na.rm = TRUE)  # Replace with mean
    }
  }
  return(df)
}

# Apply the function
airquality_clean <- handle_na(airquality)

# --- Task 2: Apply Linear Regression using Least Squares Method ---
model <- lm(Ozone ~ Solar.R, data = airquality_clean)

# Print model summary
print(summary(model))

# --- Task 3: Scatter Plot with Regression Line ---
ggplot(data = airquality_clean, aes(x = Solar.R, y = Ozone)) +
  geom_point(color = "blue", alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Ozone vs Solar Radiation", x = "Solar Radiation (Langley)", y = "Ozone (ppb)") +
  theme_minimal()
