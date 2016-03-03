if (FALSE) {
  ￼￼Homework #3 : Explore and Clean
  Using R :
  Load the following CSV file to your R environment :
  http://www.math.smith.edu/sasr/datasets/help.csv
  Using the above file perform the following,
  • Create a dataframe of: id, pcs1, mcs1, substance, and race group
  • Calculate: Mean, Median, STD, Max, Min of mcs1
  • Create a frequency table of substance vs. race group
  • Substitute the missing values of mcs1 by its’ average
}￼
mydata <- read.csv("http://www.math.smith.edu/sasr/datasets/help.csv")
View(mydata)
attach(mydata)
mydf <- data.frame(id, pcs1, mcs1, substance, racegrp)
Mean <- mean(mcs1,na.rm = TRUE)
Median <- median(mcs1,na.rm = TRUE)
STD <- sd(mcs1, na.rm = TRUE)
Max <- max(mcs1,na.rm = TRUE)
Min <- min(mcs1,na.rm = TRUE)
table(substance, racegrp)
mcs1[is.na(mcs1)] <- Mean
View(mcs1)
detach(mydata)
