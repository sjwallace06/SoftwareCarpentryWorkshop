library(dplyr)
library(gapminder)

gap <- gapminder

#to select certain columns

res <- select(gap, country, year, gdpPercap)

#forward output of one command to the next

res <- gap %>% select(country, year, gdpPercap)  #cmd shift m to get %>%

europe <- gap %>% 
  select(country, continent, year, gdpPercap)  %>% 
  filter(continent == "Europe")

unique(europe$country) #show all unique countries in europe

europe <- gap %>% 
  select(country, continent, year, gdpPercap)  %>% 
  filter(continent == "Europe" & country != "United Kingdom")  #removing UK; two things to be true or can use | for or
unique(europe$country)

europe <- gap %>% 
  #select(country, continent, year, gdpPercap)  %>% 
  filter(continent %in% c("Europe", "Asia")) %>% 
  group_by(continent, year) %>%      #group by continent and year
  summarize(
    mean_gdp = mean(gdpPercap * pop / 1e9)
  )
unique(europe$country)
str(europe)

europe <- gap %>% 
  #select(country, continent, year, gdpPercap)  %>% 
  filter(continent %in% c("Europe", "Asia")) %>% 
  group_by(continent, year) %>%      #group by continent and year
  summarize(
    mean_gdp = mean(gdpPercap * pop) / 1e9,
    mean_pop = mean(pop)
  )



meanpop <- gap %>%
  filter(continent %in% c("Africa", "Asia")) %>% 
  filter(year %in% c("1952", "1962", "1972")) %>% 
  group_by(continent, year) %>% 
  summarize(
    mean_pop = mean(pop),
    SEM = (sd(pop) / sqrt(length(pop)))
  )

