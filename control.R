number <- -1
if (number > 0) {
  print("The number was greater than 0")
}

number <- -1
if (number > 0) {
  print("The number was greater than 0")
} else {
  print("the number was not greater than 0")
}

#as soon as finds a true statement it skips to end so add another if statement if want both
number <- 25
if (number > 0) {
  print("The number was greater than 0")
} else if (number == 0) {
  print("the number is 0")
} else if (number >= 20) {
  print("the number is greater or equal to 20")
}  else {
  print("the number was not greater than 0")
}
if (number >= 20) {
  print("greater or equal to 0")
}

#for comparing conditions && and  || or

#continues to go through each variable one by one
for (variable in c(1,2,3)) {
  print(variable)
}

library(gapminder)
gap <- gapminder
unique(gap$continent)
for (continent in unique(gap$continent)) {
  print(continent)
}

for (continent in unique(gap$continent)) {
  data <- gap[gap$continent == continent,]
  print(continent)
  print(mean(data$pop))
}

#get mean gdp in billions for every country
unique(gap$country)
for (country in unique(gap$country)) {
  data <- gap[gap$country == country,]
  data$gdp <- data$pop * data$gdpPercap / 1e9
  print(country)
  print(mean(data$gdp))
}

