#Qyestion1
myData <- read.csv(file.choose())
head(myData)
#Question2: counted the success on excel and foun 121
#question3&4
binom.test(121, 500, p=0.2)
#Question5,6,7 I used Goodness beacsue we are comparing again expected
chisq.test(table(myData$Card, myData$Success))
#Question8
chisq.test(table(myData$Card))
#Question10
myData1 <- read.csv(file.choose())
head(myData1)
t.test(myData1$Trials_before_observer, myData1$Trials_with_observer)
#Question 11, 12
t.test(myData1$Trials_with_observer[myData1$subject=="SubjectA"], myData1$Trials_with_observer[myData1$subject=="SubjectB"])
#Question 13, 14: 
var.test(myData1$Trials_with_observer[myData1$subject=="SubjectA"], myData1$Trials_with_observer[myData1$subject=="SubjectB"])
#Question 15, 16
chisq.test(table(myData1$Trials_before_observer, myData1$Trials_with_observer))
t.test(myData1$Trials_before_observer, myData1$Trials_with_observer, paired = T)
#Question 21, I used Chi independence because we are asked to test if one categorical influences the other one
myData3 <- read.csv(file.choose())
head(myData3)
#Question 22
chisq.test(table(myData3$sex, myData3$class_of_worker))
#question 23
t.test(myData3$wage_per_hour[myData3$sex=="Female"], myData3$wage_per_hour[myData3$sex=="Male"])
#question 24
wilcox.test(myData3$wage_per_hour[myData3$sex=="Male"], myData3$wage_per_hour[myData3$sex=="Female"])
#question 25
chisq.test(table(myData3$sex, myData3$education))
#question 26
chisq.test(table(myData3$sex, myData3$education))
#Question 27
shapiro.test(myData3$age[myData3$sex == "Male"])
qqnorm(myData3$age[myData3$sex == "Male"], col = "darkgreen", main = "'Sex(Male) Normal Q-Q Plot'")
qqline(myData3$age[myData3$sex == "Male"], lwd = 3)
hist(myData3$age[myData3$sex == "Male"], main = "Histogram of Sex(Male) sample", col = "darkblue")

qqnorm(myData3$age[myData3$sex == "Female"], col = "darkgreen", main = "'Sex(Female) Normal Q-Q Plot'")
qqline(myData3$age[myData3$sex == "Female"], lwd = 3)
shapiro.test(myData3$age[myData3$sex == "Female"])
hist(myData3$age[myData3$sex == "Female"], main = "Histogram of Sex(Female) sample", col = "darkblue")
#question 28
t.test(myData3$age[myData3$sex=="Male"], myData3$age[myData3$sex=="Female"])
#question 29
wilcox.test(myData3$age[myData3$sex=="Male"], myData3$age[myData3$sex=="Female"])
