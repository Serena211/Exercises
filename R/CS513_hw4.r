library(class) #classification package
?knn()
rm(list=ls())
?data() 
data(iris) 
View(iris)

#randomly choose 30 percents of iris dataset as test
idx<-sample(nrow(iris),as.integer(.30*nrow(iris)))    #random

#Using negative numbers gives everything but the idx
trainData <- iris[-idx, 1:4]  #105
#This returns a new vector consisting of only the idx
testData <- iris[idx, 1:4]     #45
#for predict the fifth attribute
trainLable <- iris[-idx,5]
testLable <- iris[idx,5]

#predict the lable of test data, calculate the accurary.
predict1 <- knn(trainData,testData,trainLable, k=1)
accuracy1 <- sum(predict1==testLable)/length(testLable)

predict2 <- knn(trainData,testData,trainLable, k=2)
accuracy2 <- sum(predict2==testLable)/length(testLable)

predict5 <- knn(trainData,testData,trainLable, k=5)
accuracy5 <- sum(predict5==testLable)/length(testLable)

predict10 <- knn(trainData,testData,trainLable, k=10)
accuracy10 <- sum(predict10==testLable)/length(testLable)

if (FALSE) {
  ##This part is note of hw4. Please ignore everything within if(False){} 
  ##
  #choose 70 percents of iris dataset as sample
  #idx<-sample(nrow(iris),as.integer(.70*nrow(iris)))    #random! 
  ##
    count <- 0
    num <- nrow(testData)
    for(i in 1:num) {
      if (predict[i] == testLable[i]) {
        count <- count + 1;
      }
    }
    ##
    install.packages("gmodels")
    library(gmodels)
    a <- CrossTable(x = testLable, y = predict, prop.chisq=FALSE)
    str(a)
  }
