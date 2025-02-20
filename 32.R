# Load necessary libraries
sink("output32.txt")
library(datasets)
library(reshape2)

# Load the airquality dataset
data("airquality")

# --- Task 1: Compute Mean Temperature (Without Built-in Function) ---
compute_mean <- function(x) {
  sum(x, na.rm = TRUE) / length(na.omit(x))
}
mean_temp <- compute_mean(airquality$Temp)
print(paste("Mean Temperature:", mean_temp))

# --- Task 2: Extract First Five Rows ---
first_five_rows <- head(airquality, 5)
print("First Five Rows:")
print(first_five_rows)

# --- Task 3: Extract All Columns Except Temp and Wind ---
subset_data <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print("Dataset without Temp and Wind columns:")
print(head(subset_data))

# --- Task 4: Find the Coldest Day ---
coldest_day <- airquality[which.min(airquality$Temp), ]
print("Coldest Day:")
print(coldest_day)

# --- Task 5(i): Get Summary Statistics of airquality Dataset ---
print("Summary Statistics of Air Quality Dataset:")
summary(airquality)

# --- Task 5(ii): Melt the airquality Dataset (Long Format) ---
molten_airquality <- melt(airquality, na.rm = TRUE)
print("Molten Airquality Dataset:")
print(head(molten_airquality))

# --- Task 5(iii): Melt airquality Data and Specify Month and Day as ID Variables ---
molten_airquality_id <- melt(airquality, id.vars = c("Month", "Day"), na.rm = TRUE)
print("Molten Airquality Dataset with Month and Day as ID variables:")
print(head(molten_airquality_id))

# --- Task 5(iv): Cast the Molten Data with Respect to Month and Day ---
cast_data <- dcast(molten_airquality_id, Month + Day ~ variable, mean, na.rm = TRUE)
print("Casted Data with Month and Day:")
print(head(cast_data))

# --- Task 5(v): Compute the Average of Ozone, Solar.R, Wind, and Temp Per Month ---
avg_per_month <- dcast(molten_airquality_id, Month ~ variable, mean, na.rm = TRUE)
print("Average of Ozone, Solar.R, Wind, and Temp per Month:")
print(avg_per_month)
sinl(file = NULL)
