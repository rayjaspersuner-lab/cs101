# 1. Setup age vector and count data points
age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41, 51, 35, 24, 33, 41)
length(age)   # a. 34 data points
print(age)    # b. print vector

# 2. Reciprocal of age values
reciprocal_age <- 1 / age
print(reciprocal_age)

# 3. new_age <- c(age, 0, age)
new_age <- c(age, 0, age)
print(new_age)
# new_age doubles age with a zero in between; length is 69

# 4. Sort age values
sorted_age <- sort(age)
print(sorted_age)

# 5. Min and Max of age
print(min(age))  # 17
print(max(age))  # 57

# 6. Setup data vector and count points
data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4, 2.7)
length(data)  # 12
print(data)

# 7. Double every value of data
double_data <- data * 2
print(double_data)

# 8. Sequences
seq_1_100 <- seq(1, 100)
seq_20_60 <- seq(20, 60)
mean_20_60 <- mean(seq_20_60)
sum_51_91 <- sum(seq(51, 91))
seq_1_1000 <- seq(1, 1000)

# a. Data points count
print(length(seq_1_100))  # 100
print(length(seq_20_60))  # 41

# b. Print sequences and calculations
print(seq_1_100)
print(seq_20_60)
print(mean_20_60)
print(sum_51_91)

# c. Max data points capped at 10 for seq 1 to 1000
max_data_points <- min(length(seq_1_1000), 10)
print(max_data_points)

# 9. Filter integers 1-100 not divisible by 3,5,7 using purrr::keep
library(purrr)
filtered_vector <- purrr::keep(seq(1, 100), function(i) all(i %% c(3, 5, 7) != 0))
print(filtered_vector)

# 10. Sequence backwards from 100 to 1
seq_100_1 <- seq(100, 1)
print(seq_100_1)

# 11. Natural numbers below 25 multiples of 3 or 5 and their sum
multiples <- seq(1, 24)
multiples_3_or_5 <- multiples[(multiples %% 3 == 0) | (multiples %% 5 == 0)]
print(multiples_3_or_5)
print(length(multiples_3_or_5))
print(sum(multiples_3_or_5))

# 12. Explanation of error with block statement
# The following command will error if run directly:
# {x <- 0
# x + 5 +}
# Because it is incomplete and R expects more input after '+' sign.

# Correct way:
x <- 0
print(x + 5)

# 13. Vector score and accessing elements 2 and 3
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
print(score[2])
print(score[3])

# 14. Vector a with NAs replaced visually by -999 in print
a <- c(1, 2, NA, 4, NA, 6, 7)
print(a, na.print = "-999")
# NA values are printed as -999, actual data unchanged

# 15. Vector x class check and change
x <- c(2, 3, 4)
print(class(x))  # numeric
class(x) <- "foo"
print(class(x))  # foo


