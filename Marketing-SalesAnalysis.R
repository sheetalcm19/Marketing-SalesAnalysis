#install required packages
install.packages('datarium')
install.packages('tidyverse')
install.packages('ggplot2')

#import library for use
library(datarium)
library(tidyverse)
library(ggplot2)

#View data
View(marketing)

#get number of rows and columns of dataset
dim(marketing)

#Understand structure of data
str(marketing)

#get top 10 records
head(marketing, 10)

#get summary statistics of data - min, max, mean,etc.
summary(marketing)

plot(marketing$sales, marketing$facebook)

quantile(marketing$facebook)

#visualise the relationships between sales and facebook
ggplot(marketing, aes(x = facebook, y=sales)) + geom_point() + stat_smooth()

#visualise the relationships between sales and youtube
ggplot(marketing, aes(x = youtube, y=sales)) + geom_point() + stat_smooth()

#visualise the relationships between sales and newspaper
ggplot(marketing, aes(x = newspaper, y=sales)) + geom_point() + stat_smooth()


#Correlation analysis will determine the strength of a relationship between two continuous variables. 
#We must compute the correlation coefficient to perform this analysis. Correlations take values 
#between +1 and -1. A value close to 0 suggests a weak correlation between two variables.

#get correlation coefficient between sales and facebook
cor(marketing$sales, marketing$facebook)

#get correlation coefficient between sales and youtube
cor(marketing$sales, marketing$youtube)

#get correlation coefficient between sales and newspaper
cor(marketing$sales, marketing$newspaper)


#Simple Linear Regression Model
model1 = lm(sales ~ facebook, data = marketing)
model1

#The regression line will try to minimize the sum of squared residual values 
#(RSS or residual sum of squares).
ggplot(marketing, aes(facebook, sales)) + geom_point() + stat_smooth(method = lm)

#Standard Errors
confint(model1)

#Get Summary of the Linear Regression Model
summary(model1)

