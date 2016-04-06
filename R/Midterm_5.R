# Question #5

# Remove all members in List
rm(list=ls())

# Load the CSV file
help_csv <- read.csv("http://www.math.smith.edu/sasr/datasets/help.csv")
attach(help_csv)    # Places the data frame in the search path
help_csv_dataframe <- data.frame(id, age, daysanysub, substance, racegrp)

# Define normalized function
normlized <- function(x, min, max) {
  res <- (x - min)/(max - min)
  return (res)
}

# Normalize "daysanysub"
minVal <- min(daysanysub,na.rm = TRUE)
maxVal <- max(daysanysub,na.rm = TRUE)
Norm_daysanysub <- normlized(daysanysub, minVal, maxVal)

# Substitute the missing values of Norm_daysanysub by 0
Norm_daysanysub[is.na(Norm_daysanysub)] <- 0

# Replace daysanysub in help_csv_dataframe by normlized daysanysub
help_csv_dataframe["daysanysub"] <- Norm_daysanysub

#Calculate: Mean, Median, STD, Max of age
age_ean <- mean(age,na.rm = TRUE)
age_max <- max(age,na.rm = TRUE)
age_median <- median(age,na.rm = TRUE)
age_STD <- sd(age, na.rm = TRUE)

# Define age_group function to classify "age" by range
age_group <-  function(age, num1, num2) {
  res <- 1:length(age)
  for (i in 1:length(age)) {
    if(age[i] <= num1) {
      res[i] <- "Young"
    } else if (age[i] <= num2) {
      res[i] <- "Middle Age"
    } else {
      res[i] <- "OLD"
    }
  }
  return (res)
}
# Add new category into help_csv_dataframe dataframe
help_csv_dataframe["age_group"] <- age_group(age, 30, 60)

# Detach a data frame
detach(help_csv)   
