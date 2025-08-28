#Exercise 

#Question 01
setwd("C:\\Users\\J Kenath\\Desktop\\IT24100148_PS_Lab05")
Delivery_Times <- read.table("C:/Users/J Kenath/Downloads/Exercise - Lab 05.txt", header = TRUE)

str(Delivery_Times)
head(Delivery_Times)


#Question 02
hist(Delivery_Times$Delivery_Time, 
     breaks = seq(20, 70, length.out = 10),  # 9 classes = 10 break points
     right = FALSE,  # Right open intervals
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")

#Question 03
mean_time <- mean(Delivery_Times$Delivery_Time)
median_time <- median(Delivery_Times$Delivery_Time)
sd_time <- sd(Delivery_Times$Delivery_Time)

cat("Mean:", mean_time, "\n")
cat("Median:", median_time, "\n")
cat("Standard Deviation:", sd_time, "\n")
cat("Skewness:", (mean_time - median_time)/sd_time, "\n")


#Question 04
hist_data <- hist(Delivery_Times$Delivery_Time, 
                  breaks = seq(20, 70, length.out = 10),
                  right = FALSE,
                  plot = FALSE)

cum_freq <- cumsum(hist_data$counts)

plot(hist_data$breaks[-1], cum_freq, 
     type = "o",  # Points connected by lines
     main = "Cumulative Frequency Polygon (Ogive) for Delivery Times",
     xlab = "Delivery Time (Upper Class Limit)",
     ylab = "Cumulative Frequency",
     pch = 16,
     col = "darkred",
     lwd = 2)

# Add grid for better readability
grid()