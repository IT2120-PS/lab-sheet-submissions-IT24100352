setwd("D:\\SLIIT\\Semester Y2 S1\\PS\\Lab\\Lab 08")

data<-read.table("Data - Lab 8.txt",header=TRUE)
fix(data)
attach(data)

#Question 01

popmn<-mean(Nicotine)
popvar<-var(Nicotine)

#Question 02

samples<-C()
n<-C()

for (i in 1:30) {
  s<sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
  
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

#Question 03
samplemean<-mean(s.means)
samplevars<-var(s.means)

#Questions 04
popmn
samplemean

#Question 05
truevar=popvar/5
samplevars

# IT24100352 - Lab 08 Exercise (Laptop Weights)

# 1. Read dataset
laptops <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

# 2. Population mean & standard deviation
pop_mean <- mean(laptops$Weight.kg.)
pop_sd   <- sd(laptops$Weight.kg.)

cat("Population Mean =", pop_mean, "\n")
cat("Population Standard Deviation =", pop_sd, "\n")

# 3. Draw 25 random samples of size 6 (with replacement)
set.seed(123)   
sample_means <- numeric(25)
sample_sds   <- numeric(25)

for (i in 1:25) {
  sample_data <- sample(laptops$Weight.kg., size = 6, replace = TRUE)
  sample_means[i] <- mean(sample_data)
  sample_sds[i]   <- sd(sample_data)
}

cat("\nSample Means:\n")
print(sample_means)
cat("\nSample SDs:\n")
print(sample_sds)

# 4. Mean & SD of the 25 sample means
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means   <- sd(sample_means)

cat("\nMean of Sample Means =", mean_of_sample_means, "\n")
cat("SD of Sample Means =", sd_of_sample_means, "\n")

# 5. Comparison
cat("\n--- Comparison ---\n")
cat("Population Mean:", pop_mean, "| Mean of Sample Means:", mean_of_sample_means, "\n")
cat("Population SD:", pop_sd, "| SD of Sample Means:", sd_of_sample_means, "\n")

