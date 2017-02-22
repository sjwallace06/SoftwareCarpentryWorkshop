library(gapminder)

gap <- gapminder
str(gap)
colnames(gap)
dim(gap) 
summary(gap) 

mean(gap$gdpPercap)
sum(gap$pop)
sum(as.numeric(gap$pop))
sd(gap$gdpPercap)

numbers <- c(1,5,10,15,3,5,67,NA,NA)
numbers
numbers >= 10
numbers[numbers >= 10]
mean(numbers)

numbers[is.na(numbers)]
numbers[!is.na(numbers)]
mean(numbers[!is.na(numbers)])
mean(numbers, na.rm = TRUE)


text <- c("a", "b", "c", "a")
text == "a"
text[text == "a"]
text[!text == "a"]

head(gap)
tail(gap)
gap[1000:1005,]

gap
gap$country == "Canada"
gap[gap$country == "Canada",]

gap
gap$continent == "Asia"
asia <- gap[gap$continent == "Asia",]
unique(asia$continent)
unique(asia$country)

text %in% c("a", "cheescake")
text[text %in% c("a", "cheescake")]

gap
countries <- gap[gap$country %in% c("China", "Canada", "Cambodia"),]
countries$gdp <- countries$gdpPercap * countries$pop/1000000
countries
unique(countries$country)

mean(gap$gdpPercap[(gap$country %in% c("Canada", "China", "Cambodia"))])


