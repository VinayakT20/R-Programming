count <- as.integer(readline("Enter the count of numbers:"))

Multiplication=1 

for(i in 1:count){
  num <- as.integer(readline(prompt = "Enter the Values:"))
  Multiplication=Multiplication*num
}
print(Multiplication^(1/count))
