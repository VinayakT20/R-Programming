count <- as.integer(readline("Enter the count of numbers:"))

summation=0 

for(i in 1:count){
  num <- as.integer(readline(prompt = "Enter the Values:"))
  summation=summation+num
}
print(summation/count)
                