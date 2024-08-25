sorted_data <- CVD_cleaned[order(CVD_cleaned$Alcohol_Consumption, decreasing = TRUE), ]
sorted_data
ls(CVD_cleaned)

sorted_data1 <- world.data.2023[order(world.data.2023$Minimum.wage,world.data.2023$Official.language), ]
sorted_data1
ls(world.data.2023)
