setwd("C:\\Users\\HP\\OneDrive - Sri Lanka Institute of Information Technology\\Semesters\\Y02 Semester 01\\P&S\\Lab\\P&S_lab_06\\IT24100148_P&S_Lab_06")

#Exercise
#Question 01: IT Company Learning Platform
#part 01:
#Binomial distribution
#X follows a distribution with n = 50 and p = 0.85

#part 02:
# Probability that at least 47 students passed the test
# P(X ≥ 47) = 1 - P(X ≤ 46)
prob_at_least_47 <- 1 - pbinom(46, 50, 0.85, lower.tail = TRUE)


#Question 02: Call Center
#part 01:
#Number of customer calls received in an hour

#part 02:
#Poisson distribution
#Here, X follows a Poisson distribution with lambda = 12

#part 03: 
#Probability that exactly 15 calls are received in an hour
prob_exactly_15 <- dpois(15, 12)
