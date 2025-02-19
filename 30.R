
# Experiment 9 - EDA on Iris dataset
# Load iris dataset
sink("output29.txt")
data(iris)

# (i) Find dimension, structure, summary statistics, standard deviation
print(dim(iris))
print(str(iris))
print(summary(iris))
print(sapply(iris[,1:4], sd))

# (ii) Find mean and standard deviation grouped by Species
library(dplyr)
iris_grouped <- iris %>% group_by(Species) %>% 
  summarise(across(everything(), list(mean = mean, sd = sd)))
print(iris_grouped)

# (iii) Find quantile values of Sepal.Width and Sepal.Length
print(quantile(iris$Sepal.Width))
print(quantile(iris$Sepal.Length))

# (iv) Create new dataframe with Sepal.Length categorized by quantile
iris$Sepal.Length.Cate <- cut(iris$Sepal.Length, breaks = quantile(iris$Sepal.Length), include.lowest = TRUE)
iris1 <- iris
print(head(iris1))

# (v) Average value of numerical variables by Species and Sepal.Length.Cate
iris_avg <- iris1 %>% group_by(Species, Sepal.Length.Cate) %>% summarise(across(where(is.numeric), mean))
print(iris_avg)

# (vi) Average mean value of numerical variables by Species and Sepal.Length.Cate
iris_mean <- iris1 %>% group_by(Species, Sepal.Length.Cate) %>% summarise(across(where(is.numeric), mean))
print(iris_mean)

# (vii) Create Pivot Table based on Species and Sepal.Length.Cate
library(tidyr)
iris_pivot <- iris1 %>% 
  group_by(Species, Sepal.Length.Cate) %>% 
  summarise(Count = n()) %>% 
  pivot_wider(names_from = Sepal.Length.Cate, values_from = Count, values_fill = 0)
print(iris_pivot)
sink(file = NULL)

