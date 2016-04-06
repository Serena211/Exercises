# Question #2

rm(list = ls())

titanic_data <- read.csv("/Users/Serena/Documents/DataMining/Titanic_rows.CSV")
attach(titanic_data)
#	What is the probability that a passenger survived? Why?
# ANSWER:
#   Set S = the probability that a passenger survived
#   we get how many people by "sum(Survived == "Yes")"
#   and how many people on titanic "nrow(titanic_data)"
P_S <- sum(Survived == "Yes")/nrow(titanic_data)

#	What is the probability that a passenger survived AND 
# the passenger was staying in the “Crew class” cabin? Why?
# ANSWER:
#   Set C = the probability that a passenger was staying in the Crew
P_S_and_C <- sum(Survived == "Yes" & Class == "Crew")/nrow(titanic_data)
P_C <- sum(Class == "Crew")/nrow(titanic_data)

#	What is the probability that a passenger  survived GIVEN 
# he/she was staying in the “Crew class” cabin? Why?
# ANSWER:
#   Set S = the probability that a passengersurvived
#   Set C = he/she was staying in the “Crew class” cabin
#   The conditional probability is P(S/C) = P(S n C)/P(C)
P_S_given_C = P_S_and_C / P_C 
  
#	What is the probability that a passenger survived GIVEN 
# that he (”MALE”)  was staying in the “2nd class” cabin? Why?
# ANSWER:
#   Set S = the probability that a passenger  survived
#   Set 2nd_m = he was staying in the “2nd class” cabin
#   The conditional probability is P(S/2nd_m) = P(S n 2nd_m)/P(2nd_m)
P_S_and_2nd_m <- sum(Survived == "Yes" & Class == "2nd" & Sex == "Male")/nrow(titanic_data)
P_2nd_m = sum(Class == "2nd" & Sex == "Male")/nrow(titanic_data)
P_S_given_2nd_m <- P_S_and_2nd_m / P_2nd_m

#	Are Survival and Age independent? Why?
# ANSWER:
#   A and B are independent (no additional information) if P(A|B) = P(A) or P(AnB)=P(A)P(B)
#   So, there are dependent, because P_S_given_Child ≠ P_S and P_S_given_Adult ≠ P_S
#   Set S = the probability that a passenger  survived
P_Adult <- sum(Age == "Adult")/nrow(titanic_data)
P_Child <- sum(Age == "Child")/nrow(titanic_data)
P_S <- sum(Survived == "Yes")/nrow(titanic_data)
x <- P_Adult * P_S
P_S_and_Adult <- sum(Age == "Adult" & Survived == "Yes")/nrow(titanic_data)
P_S_and_Child <- sum(Age == "Child" & Survived == "Yes")/nrow(titanic_data)
P_S_given_Adult <- P_S_and_Adult / P_Adult
P_S_given_Child <- P_S_and_Child / P_Child

#	Given that a passenger survived, what is the probability 
#  that the passenger was a “Female” and was staying in the 
#  “2st class” cabin? Why?
# ANSWER:
#   Set S = the probability that a passenger  survived
#   Set 2nd_f = he was staying in the “2nd class” cabin
#   The conditional probability is P(2nd_f/S) = P(S n 2nd_f)/P(S)
P_S_and_2nd_f <- sum(Survived == "Yes" & Class == "2nd" & Sex == "Female")/nrow(titanic_data)
P_2nd_f = sum(Class == "2nd" & Sex == "Female")/nrow(titanic_data)
P_2nd_f_given_S <- P_S_and_2nd_f / P_S

  