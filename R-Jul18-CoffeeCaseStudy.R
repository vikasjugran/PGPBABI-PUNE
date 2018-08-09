# Reading coffee file fom working directory
coffee_data <- read.csv('coffee.csv')
View(coffee_data)
summary(coffee_data)

# Attaching all the column so that we can access all the column fields directly
attach(coffee_data)

# Plotting Bar graph with Brand Name and price per packet, gives insight how many coffess of each brand sold and at what price
barplot(table(Price_per_Packet,Brand_Name),horiz=T,xlab = "No of Coffee Packets Sold", 
        ylab = "Coffee Brands",legend.text = TRUE)

# Gives the summary by individual brand name
by(coffee_data,INDICES = Brand_Name,FUN = summary )

library(rpivotTable)
rpivotTable(coffee_data)


