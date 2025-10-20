# RWorksheet_lastname#2.R
# R Programming Worksheet - Vectors and Data Manipulation

# --------------------------
# 1. Create a vector using : operator
# --------------------------

# a. Sequence from -5 to 5
vec1 <- -5:5
print(vec1)
# Output: -5 -4 -3 -2 -1 0 1 2 3 4 5

# Description:
# This creates a sequence of integers from -5 to 5 incrementing by 1.

# b. x <- 1:7. What will be the value of x?
x <- 1:7
print(x)
# Output: 1 2 3 4 5 6 7

# --------------------------
# 2. Create a vector using seq() function
# --------------------------

# a. seq(1, 3, by=0.2)
vec2 <- seq(1, 3, by = 0.2)
print(vec2)
# Output: 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0

# Description:
# Generates a sequence starting at 1, ending at 3, increasing by 0.2 each step.

# --------------------------
# 3. Factory workers' ages vector
# --------------------------

ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
          35, 31, 27, 22, 37, 34, 19, 20, 57, 49,
          50, 37, 46, 25, 17, 37, 43, 53, 41, 51,
          35, 24, 33, 41, 53, 40, 18, 44, 38, 41,
          48, 27, 39, 19, 30, 61, 54, 58, 26, 18)

# a. Access 3rd element
print(ages[3])
# Output: 22

# b. Access 2nd and 4th elements
print(ages[c(2, 4)])
# Output: 28 36

# c. Access all but the 1st element
print(ages[-1])
# Output: All ages except the first (34)

# --------------------------
# 4. Named vector and accessing elements
# --------------------------

x <- c("first" = 3, "second" = 0, "third" = 9)
print(x)
# Output: first 3, second 0, third 9

# Access "first" and "third" elements
print(x[c("first", "third")])
# Output: first 3, third 9

# Description:
# Vector 'x' has named elements; accessing by names returns corresponding values.

# --------------------------
# 5. Modify vector element
# --------------------------

x_seq <- -3:2
print(x_seq)
# Output: -3 -2 -1 0 1 2

# a. Modify 2nd element to 0
x_seq[2] <- 0
print(x_seq)
# Output: -3  0 -1  0  1  2

# Description:
# The 2nd element of x_seq changes from -2 to 0.

# --------------------------
# 6. Diesel fuel data frame and expenditure
# --------------------------

# a. Create data frame
months <- c("Jan", "Feb", "March", "Apr", "May", "June")
price_per_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25, 30, 40, 50, 10, 45)

fuel_data <- data.frame(
  Month = months,
  PricePerLiter = price_per_liter,
  Quantity = purchase_quantity
)
print(fuel_data)

# b. Average fuel expenditure
# Calculate total expenditure per month
expenditure <- price_per_liter * purchase_quantity

# Weighted mean of price per liter by quantity purchased
avg_price <- weighted.mean(price_per_liter, purchase_quantity)
print(avg_price)
# Output: Average price per liter weighted by purchase quantity

# Total expenditure over 6 months
total_expenditure <- sum(expenditure)
print(total_expenditure)

# --------------------------
# 7. Built-in rivers dataset statistics
# --------------------------

# a. Create vector 'data' with requested statistics
data <- c(
  length(rivers),
  sum(rivers),
  mean(rivers),
  median(rivers),
  var(rivers),
  sd(rivers),
  min(rivers),
  max(rivers)
)
names(data) <- c("Length", "Sum", "Mean", "Median", "Variance", "StdDev", "Min", "Max")

print(data)


# --------------------------
# 8. Forbes celebrities data manipulation
# --------------------------

# Create vectors for Celebrity names, Power rankings, and Pay (in millions)
celebrity_names <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods",
                     "Steven Spielberg", "50 Cent", "Dan Brown", "Bruce Springsteen", "Paul McCartney",
                     "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling",
                     "Howard Stern", "Bradd Pitt", "Peter Jackson", "Cast of the Sopranos", "Dr. Phil McGraw",
                     "Jay Lenon", "Celine Dion", "Donald Trump", "Kobe Bryant", "Muhammad Ali")

power_ranking <- c(1, 2, 3, 4, 5,
                   6, 8, 10, 13, 14,
                   15, 16, 17, 18, 19,
                   20, 21, 22, 23, 24,
                   23, 24, 24, 25, 25)  # Note: some ranks tied or missing - assigned approx.

pay <- c(67, 90, 225, 110, 90,
         332, 41, 88, 55, 40,
         233, 34, 40, 47, 75,
         302, 25, 39, 52, 45,
         32, 40, 44, 31, 55)

# Put into a data frame for better clarity
celeb_df <- data.frame(
  PowerRanking = power_ranking,
  Celebrity = celebrity_names,
  Pay_Millions = pay
)

print(celeb_df)

# b. Modify J.K. Rowling's power ranking and pay
celeb_df$PowerRanking[celeb_df$Celebrity == "J.K Rowling"] <- 15
celeb_df$Pay_Millions[celeb_df$Celebrity == "J.K Rowling"] <- 90

print(celeb_df[celeb_df$Celebrity == "J.K Rowling", ])

# c. Interpretation:
# J.K Rowling's power ranking was changed to 15 and pay increased to 90 million.
# This could suggest a revised estimation of her influence and earnings compared to the initial data.


# --------------------------

# a. Create vectors
celeb_names <- c("Oprah Winfrey", "Steven Spielberg", "Bill Gates", "Tiger Woods", "J.K. Rowling")
power_ranking <- c(1, 2, 3, 4, 7)
annual_pay <- c(165, 147, 138, 122, 80)  # in millions USD

# Print vectors
print(celeb_names)
print(power_ranking)
print(annual_pay)

# b. Modify J.K. Rowling's data
power_ranking[celeb_names == "J.K. Rowling"] <- 15
annual_pay[celeb_names == "J.K. Rowling"] <- 90

print(power_ranking)
print(annual_pay)



