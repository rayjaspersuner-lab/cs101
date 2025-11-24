#VECTORS
LETTERS <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J",
             "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T",
             "U", "V", "W", "X", "Y", "Z")
letters <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
             "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
             "u", "v", "w", "x", "y", "z")
# 1. a.You need to produce a vector that contains the first 11 letters
first_11 <- LETTERS[1:11]
first_11

#b. Produce a vector that contains the odd numbered letters.
odd_letters <- LETTERS[seq(1, 26, by = 2)]
odd_letters

#c. Produce a vector that contains the vowels
vowels <- LETTERS[c(1, 5, 9, 15, 21)]
vowels
#d. Produce a vector that contains the last 5 lowercase letters.
last_5 <- letters[22:26]
last_5

#e. Produce a vector that contains letters between 15 to 24 letters in lowercase.
letters_15_24 <- letters[15:24]
letters_15_24

#VECTORS

#2. a. What is the R code and its result for creating a character vector for the city/town of Tuguegarao City, Manila, Iloilo City, Tacloban,Samal Island, and Davao City? Name the object as city. The names should follow the same order as in the instruction.
city <- c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City")
city

#b. The average temperatures in Celcius are 42, 39, 34, 34, 30, and 27 degrees. Name the object as temp. Write the R code and its output. Numbers should also follow what is in the instruction.
temp <- c(42, 39, 34, 34, 30, 27)
temp

#c. Create a dataframe to combine the city and the temp by using ‘data.frame(). What the R code and its result?
weather <- data.frame(city, temp)
print(weather)

#d. Associate the dataframe you have created in 2.(c) by naming the columns using the names() function. Change the column names by using names() function as City and Temperature. What is the R code and its result?
names(weather) <- c("City", "Temperature")
print(weather)

#e. Print the structure by using str() function. Describe the output.
str(weather)

#f. From the answer in d, what is the content of row 3 and row 4 What is its R code and its output?
weather[3:4, ]

#g. From the answer in d, display the city with highest temperature and the city with the lowest temperature. What is its R code and its output?
weather[which.max(weather$Temperature), ]
weather[which.min(weather$Temperature), ]

#MATRICES

m <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)

#3. a. What will be the R code for the #2 question and its result?
m <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
m

#b. Multiply the matrix by two. What is its R code and its result?
m2 <- m * 2
m2

#c. What is the content of row 2? What is its R code?
m[2, ]

#d. What will be the R code if you want to display the column 3 and column 4 in row 1 and row 2? What is its output?
m[1:2, 3:4]

#e. What is the R code is you want to display only the columns in 2 and 3, row 3? What is its output?
m[3, 2:3]

#f. What is the R code is you want to display only the columns 4? What is its output?
m[, 4]

#g. Name the rows as isa, dalawa, tatlo and columns as uno, dos, tres, quatro for the matrix that was created in b.‘. What is its R code and corresponding output?
rownames(m2) <- c("isa", "dalawa", "tatlo")
colnames(m2) <- c("uno", "dos", "tres", "quatro")
m2

#h. From the original matrix you have created in a, reshape the matrix by assigning a new dimension with dim(). New dimensions should have 2 columns and 6 rows. What will be the R code and its output?
dim(m) <- c(6, 2)
m

#ARRAYS
#3.a. Create an array for the above numeric values. Each values will be repeated twice What will be the R code if you are to create a three-dimensional array with 4 columns and 2 rows. What will be its output?
# Original values
v <- c(1,2,3,6,7,8,9,0,3,4,5,1)

v2 <- rep(v, each = 2)
arr <- array(v2, dim = c(2, 4, 3))
arr

#b. How many dimensions do your array have?
length(dim(arr))

#c. Name the rows as lowercase letters and columns as uppercase letters starting from the A. The array names should be “1st-Dimensional Array”, “2nd-Dimensional Array”, and“3rd-Dimensional Array”. What will be the R codes and its output?
# Assign dimension names
dimnames(arr) <- list(
  c("a", "b"),                      # row names
  c("A", "B", "C", "D"),            # column names
  c("1st-Dimensional Array",
    "2nd-Dimensional Array",
    "3rd-Dimensional Array")        # slice names
)
arr




