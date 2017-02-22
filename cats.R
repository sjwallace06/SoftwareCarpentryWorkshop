#this script loads and analyzes some cats

cats <- read.csv("cats.csv",as.is = TRUE)
cats$likes_string <- as.logical(cats$likes_string)

str(cats)

a_list <- list(1,4.5,TRUE,NA, c(1,3,54))
a_list
a_list[1] #first element of a list
class(a_list[[1]])
a_list[[5]][3] #want third element of 5th element in the list
names(a_list)
names(a_list) <- c("first", "second", "third", "and so on", "etc")
a_list
a_list$etc

theMatrix <- matrix(1:10, nrow = 5,ncol = 2)
theMatrix
theMatrix[1,2]
cats[1,]
cats[,1]

theMatrix2 <- matrix(1:50, nrow = 5, ncol= 10, byrow= TRUE)

