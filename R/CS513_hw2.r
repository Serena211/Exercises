if(FALSE) {
' Author: Xuanyu Liu
  Professor: Khasha Dehnad
  Description: this file is wroten for Homework2, intro. to basic R
  How To Run:
    1.Open this file in RStudio
    2.Click the "Source" button above the code area
  '
}

# 2.1 Create the following x and y vectors: 
#     x= 1,2,3
#     y= 11,12,13,14,15,16
x <- c(1,2,3)
y <- c(11,12,13,14,15,16)

# 2.2 Calculate and display z=x+y.
z <- x + y
print(cat("z = x + y =", z, fill = TRUE)) # how to remove NULL?
# ------------tips:  = is lower precedence than <-

# 2.3 Explain the results.
    # Actrully, it works like c(1,2,3,1,2,3) 
    # plus c(11,12,13,14,15,16), 
    # then we get the result "[1] 12 14 16 15 17 19".

# 2.4 Create a vector of your last name.
lastName <- c('LIU')

# 2.5 Create a vector of your first name.
firstName <- c('XUANYU')

# 2.6 Create a vector of your student ID.
stdID <- c('10396149')

# 2.7 What are the length and data type of the "last name" vector? Why?
length(lastName)
typeof(lastName)
print("The length of lastName is 1 and the data type of it is character, because it only contain one element saved as character.")      

# 2.8 Combine your first name, last name and student id into a single vector ("myinfo“).
myinfo <- c(firstName, lastName, stdID)

# 2.9 Display "myinfo" in the Console.
print(myinfo)

# 2.10 What are the length and data type of "myinfo"? 
length(myinfo)
typeof(myinfo)
print("The length of 'myinfo' is 3 and the data type of it is character.")

# 2.11 Remove the "first_name" object.
myinfo <- setdiff(myinfo, firstName)

# 2.12 Display "myinfo" in the Console again.
print(myinfo)

# 2.13 Create a dataframe "roster" using the following table: 
#     First   Last    ID
#     fname1  lname1  1111
#     fname2  lname2  2222 
roster <- data.frame(First=c('fname1', 'fname2'), Last=c('lname1','lname2'), ID=c(1111,2222))

# 2.14 View the “roster”.
print(roster)

# 2.15 Export the data frame “roster” to a csv file.
pwd <- "/Users/Serena/Documents/DataMining/"
write.csv(roster, file = paste(pwd,"roster.csv", sep = ""), row.names = FALSE)

# 2.16 Import and view the following csv file: http://www.math.smith.edu/sasr/datasets/help.csv
helpData <- read.csv("http://www.math.smith.edu/sasr/datasets/help.csv")
print(helpData)

# 2.17 Remove all the objects in your session.
rm(list = ls())

# Please uncomment this line, if you want delete the roster.csv file, which is saved above
#file.remove("/Users/Serena/Documents/DataMining/roster.csv")

#trick
.f = function() {
  #remove the roster.csv file
  file.remove("/Users/Serena/Documents/DataMining/roster.csv")
  #clear the Console
  cat("\014")
  #or use "control + l" in Mac OS
  }
