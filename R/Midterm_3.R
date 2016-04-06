# Question #3

######3.1#######################################################
# Remove all members in List
rm(list=ls())

# Create vectors (age, asset,income) 
age <- c(30,25,33,35)
asset <- c(60,50,60,80)
income <- c(100,90,150)

# Define normalized function: norm = (x - min)/(max - min)
normlized <- function(x, min, max) {
  res <- (x - min)/(max - min)
  return (res)
}

# Normalize age, asset 
age <- normlized(age,min(25),max(45))
asset <- normlized(asset,min(50),max(100))

# Compute dist from x to 1,2,3
dx1 <- sqrt((age[1] - age[2])^2 + (asset[1] - asset[2])^2)
dx2 <- sqrt((age[1] - age[3])^2 + (asset[1] - asset[3])^2)
dx3 <- sqrt((age[1] - age[4])^2 + (asset[1] - asset[4])^2)

# The votes of these records are weighted according to the 
# inverse square of their distance to the new record
Votes_1 <- 1/(dx1^2)
Votes_2 <- 1/(dx2^2)
Votes_3 <- 1/(dx3^2)
income_X <- (100 * Votes_1+ 90*Votes_2+150*Votes_3)/(Votes_1+Votes_2+Votes_3)


######3.2#######################################################

# Create vectors (new_age, new_asset,new_income) 
new_age <- c(30,25,33,35,30,30,30)
new_asset <- c(60,50,60,80,60,60,60)
new_income <- c("Medium","Low","High","Medium","High","High")
# Normalize new_age, new_asset 
new_age <- normlized(new_age,min(25),max(45))
new_asset <- normlized(new_asset,min(50),max(100))
# Compute dist from x to 1-6
dx_1 <- sqrt((age[1] - age[2])^2 + (asset[1] - asset[2])^2)
dx_2 <- sqrt((age[1] - age[3])^2 + (asset[1] - asset[3])^2)
dx_3 <- sqrt((age[1] - age[4])^2 + (asset[1] - asset[4])^2)
dx_4 <- sqrt((age[1] - age[5])^2 + (asset[1] - asset[5])^2)
dx_5 <- sqrt((age[1] - age[6])^2 + (asset[1] - asset[6])^2)
dx_6 <- sqrt((age[1] - age[7])^2 + (asset[1] - asset[7])^2)