# Question #6

rm(list = ls())

nulei_data <- read.csv("/Users/Serena/Documents/DataMining/wisc_bc_data.csv")
attach(nulei_data)

# Calculate: Median, Max, Min of radius_mean
r_min <- min(radius_mean,na.rm = TRUE)
r_max <- max(radius_mean,na.rm = TRUE)
r_median <- median(radius_mean,na.rm = TRUE)

# Calculate: Median, Max, Min of texture_mean
t_min <- min(texture_mean,na.rm = TRUE)
t_max <- max(texture_mean,na.rm = TRUE)
r_median <- median(texture_mean,na.rm = TRUE)

# Select every 7th observation (row) to create the test data set
idx <- seq(from = 1, to = nrow(nulei_data), by=7)

# Use “radius_mean ”, and “texture_mean” columns in the training dataset
train_data <- nulei_data[-idx,3:4]
# Factor of true classifications of training set
train_lable <- nulei_data[-idx,2]

# Use “radius_mean ”, and “texture_mean” columns in the testing dataset
test_data <- nulei_data[idx,3:4]
# Factor of true classifications of testing set
test_lable <- nulei_data[idx,2]

#classification package
library(class) 
?knn()
# The knn function(k=5) to classify observations in the test datase
predict_test_label <- knn(train_data, test_data, train_lable, k = 5)

# Measure teh performance of knn k = 5
# predict_test_label <- as.numeric(predict_test_label)
# test_lable <- as.numeric(test_lable)
accuracy <- sum(predict_test_label==test_lable)/length(test_lable)
table(Predict = predict_test_label,Test=test_lable)

detach(nulei_data)

                