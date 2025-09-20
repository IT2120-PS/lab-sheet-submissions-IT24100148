setwd("C:\\Users\\HP\\OneDrive - Sri Lanka Institute of Information Technology\\Semesters\\Y02 Semester 01\\P&S\\Lab\\P&s_lab_07\\IT24100148_P&S_Lab_07")

#Excercise
# Question1. Uniform Distribution: Train Arrival
prob_train <- punif(25, min = 0, max = 40, lower.tail = TRUE) - punif(10, min = 0, max = 40, lower.tail = TRUE)
print(prob_train)

# Question2. Exponential Distribution: Software Update
prob_update <- pexp(2, rate = 1/3, lower.tail = TRUE)
print(prob_update)

# Question3 Normal Distribution: IQ Scores
# i.
prob_iq_above <- pnorm(130, mean = 100, sd = 15, lower.tail = FALSE)
print(prob_iq_above)

# ii. 
iq_95_percentile <- qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)
print(iq_95_percentile)