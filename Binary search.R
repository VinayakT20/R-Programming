# Define the binary_search function first
binary_search <- function(numeric_vector, target) {
  left <- 1
  right <- length(numeric_vector)
  
  while (left <= right) {
    mid <- floor((left + right) / 2)
    mid_value <- numeric_vector[mid]
    
    if (mid_value == target) {
      return(mid) 
    } else if (mid_value < target) {
      left <- mid + 1  
    } else {
      right <- mid - 1  
    }
  }
  
  return(NA)
}

# Now you can use the binary_search function
user_input <- readline(prompt = "Enter a vector of numbers (separated by spaces): ")

numeric_vector <- as.numeric(strsplit(user_input, " ")[[1]])

if (any(is.na(numeric_vector))) {
  cat("Invalid input. Please enter a valid vector of numbers.")
} else {
  n <- length(numeric_vector)
  for (i in 1:(n - 1)) {
    for (j in 1:(n - i)) {
      if (numeric_vector[j] > numeric_vector[j + 1]) 
      {
        temp <- numeric_vector[j]
        numeric_vector[j] <- numeric_vector[j + 1]
        numeric_vector[j + 1] <- temp
      }
    }
  }
  
  target <- readline(prompt = "Enter the target element to search: ")
  
  target <- as.numeric(target)
  
  if (is.na(target)) {
    cat("Invalid target element. Please enter a valid number.")
  } else {
    result <- binary_search(numeric_vector, target)
    
    if (!is.na(result)) {
      cat("Target found at index:", result, "\n")
    } else {
      cat("Target not found in the vector.\n")
    }
  }
}
