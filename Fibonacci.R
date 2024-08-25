#fibonacci sequence
a <- as.integer(readline(prompt ="Number of the terms needed:"))

i <- 1

x=0

y=1

if (a<=0){
  print("Give a number greater than 0")
}
if (a>0){
  print(x)
}
if (a>1){
  print(y)
}
while (i<=a-2){
  z= x+y
  x= y
  y= z
  print(z)
  i <- i+1
}