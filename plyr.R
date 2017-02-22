#https://swcarpentry.github.io/r-novice-gapminder/12-plyr/

library(gapminder)
library(plyr)

gap <- gapminder
write.csv(gap, "gap.csv", row.names = FALSE)

gap <- read.csv("gap.csv") #writes all the row names to an extra column

#functions
adder <- function(num1,num2){
  return(num1 + num2)
}

x <- adder(3,5)

FtoK <- function(Fnum){
  return((Fnum - 32) * 5 / 9 + 273)
}
Kelvin <- FtoK(35)

KtoF <- function(Knum){
  ans <- (Knum - 273) / (5/9) + 32
  return(ans)
}
Far <- KtoF(400)


gdpBycontinent <- ddply(
  .data = gap,
  .variables = c("continent"),  #breaks data into the chunks of x (continent)
  .fun = function(chunk){    #apply this function to each chunk
    return(mean(chunk$pop))
  }
)
gdpBycontinent

gdpBycontinent <- ddply(
  .data = gap,
  .variables = c("continent", "year"),  #column for both
  .fun = function(chunk){    #apply this function to each chunk
    return(mean(chunk$pop))
  }
)
gdpBycontinent
install.packages("microbenchmark")

library(doParallel)
library(microbenchmark)
ncores <- detectCores()
registerDoParallel(cores = ncores)

microbenchmark(
result <- laply(
  .data = 1:100, 
  .fun = function(number) {
    Sys.sleep(0.1)
    return(number)
  }
    ),
times = 1
)
result

microbenchmark(
  result <- laply(
    .data = 1:100, 
    .fun = function(number) {
      Sys.sleep(0.1)
      return(number)
    }
  ),
  result <- laply(
    .data = 1:100, 
    .fun = function(number) {
      Sys.sleep(0.1)
      return(number)
    },
    .parallel = TRUE
  ),
  
  times = 1
)
result





