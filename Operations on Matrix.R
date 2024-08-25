#Addition of two matrix

input_vector <- readline(prompt = "Enter a vector 1 for Addition (Seperated by spaces): ")
numeric_vector <- as.numeric(strsplit(input_vector, " ")[[1]])

if (length(numeric_vector) != 4) {
  stop("Please enter exactly 4 numeric values (2 rows x 2 columns) separated by spaces.")
}

input_vector2 <- readline(prompt = "Enter a vector 2 for Addition (Seperated by spaces): ")
numeric_vector2 <- as.numeric(strsplit(input_vector2, " ")[[1]])

if (length(numeric_vector2) != 4) {
  stop("Please enter exactly 4 numeric values (2 rows x 2 columns) separated by spaces.")
}

matrix1 <- matrix(c(numeric_vector), nrow=2, ncol=2)
matrix2 <- matrix(c(numeric_vector2), nrow=2, ncol=2)

result <- matrix1 + matrix2
print(result)

#Multiplication of two matrix

in_vector <- readline(prompt = "Enter a vector 1 for Multiplication (Seperated by spaces): ")
num_vector <- as.numeric(strsplit(in_vector, " ")[[1]])

if (length(num_vector) != 6) {
  stop("Please enter exactly 6 numeric values (2 rows x 3 columns) for the first matrix separated by spaces.")
}

in_vector2 <- readline(prompt = "Enter a vector 2 for Multiplication (Seperated by spaces): ")
num_vector2 <- as.numeric(strsplit(in_vector2, " ")[[1]])

if (length(num_vector2) != 6) {
  stop("Please enter exactly 6 numeric values (3 rows x 2 columns) for the second matrix separated by spaces.")
}

matrix3 <- matrix(c(num_vector), nrow=2, ncol=3)
matrix4 <- matrix(c(num_vector2), nrow=3, ncol=2)

result1 <- matrix3 %*% matrix4
print(result1)
