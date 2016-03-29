##5.3

if(FALSE) {
  ' Author: Xuanyu Liu
  Professor: Khasha Dehnad
  Description: this file is wroten for Homework4, knn
  How To Run:
  1.Open this file in RStudio
  2.Click the "Source" button above the code area
  '
}

#clear the Console
cat("\014")
#remove all objects
rm(list=ls())

library(class)  #classification package
?kknn()
library(kknn)

# Define normalized function
normlized <- function(x, min, max) {
  res <- (x - min)/(max - min)
  return (res)
}

# load iris dataset
?data() 
data(iris) 
View(iris)

# normalize the data of iris and save as data frame
iris <- cbind(Sepal.Length=normlized(iris[,1],min(iris[,1]),max(iris[,1]))
       , sepal.Width=normlized(iris[,2],min(iris[,2]),max(iris[,2] ))
       ,Petal.Length=normlized(iris[,3],min(iris[,3]),max(iris[,3] ))
       , Petal.Width=normlized(iris[,4],min(iris[,4]),max(iris[,4] ))
       ,Species=as.character(iris[,5]))
iris_norm <- as.data.frame(iris)

# Store every fifth record of iris in idx as the index of testdata
idx <- seq(from = 1, to = nrow(iris_norm), by=5)

#Using negative numbers gives everything but the idx
trainData <- iris_norm[-idx,]  #120

#This returns a new vector consisting of only the idx
testData <- iris_norm[idx,]     #30

#for predict the fifth attribute
trainLable <- iris_norm[-idx,5]
testLable <- iris_norm[idx,5]

# Vector of predictions.
predict5 <- kknn(formula=Species~., trainData,testData, k=5, distance = 1,
                 kernel = "biweight")

# Extract fitted.values from the object "predict5"
fit <- fitted(predict5)

# Show the result of classification
table(Predict = fit,Test=testLable)

