#This load the .csv file in RStudio and assign it(the table) to MyFile
MyFile <- read.csv(file.choose())

#Use attach() to make sure I loaded the exact umber of colums from the .csv file
#We can also use names() to have them as stings
attach(MyFile)

#Call the head() function and pass MyFile as an argument to make sure the .csv file was well loaded
MyFile
head(MyFile)

#The moments package was alredy installed, but need to be loaded at every use
install.packages("moments")
library(moments) 

#Use the summary() function to get the mean, median, minima,and maxima
summary(MyFile)

#This block caculate the Standard Deviation of the numarique variable and assign
#it to VariableName
sdPS <- sd(MyFile$physical.strength)
sdI <- sd(MyFile$intelligence)
sdEDU <- sd(MyFile$education)
sdGold <- sd(MyFile$Gold)

#Use the mean() to calcule the variance of the numerique variable
meanP <- mean(MyFile$physical.strength)
meanI <- mean(MyFile$intelligence)
meanEDU <- mean(MyFile$education)
meanGOLD <- mean(MyFile$Gold)

#Use the skewness() functions to calculate the skew of the numeric variable
skPS <- skewness(MyFile$physical.strength)
skI <- skewness(MyFile$intelligence)
skEDU <- skewness(MyFile$education)
skGold <- skewness(MyFile$Gold)

#Use the hist() function to reate histograms of quantitaive variabbles
hist(MyFile$physical.strength, main = "Histogram of Physical.strength", col = "darkgreen", xlab = "physical.strength")
hist(MyFile$intelligence, main = "Histogram of Intelligence", col = "darkgreen", xlab = "intelligence")
hist(MyFile$education, main = "Histogram of Education", col = "darkgreen", xlab = "education")
hist(MyFile$Gold, main = "Histogram of Gold", col = "darkgreen", xlab = "Gold")

#Create the histogram of the log of Gold
hist(log(MyFile$physical.strength), main = "Histogram of Log of Gold", xlab = "log of Gold", col = "gold")

#Create the dotchar of categorical variables.
#Use table in front of if a syntac error will occur of x not vector or matrix
dotchart(table(MyFile$occupation), pch = 19, col = "darkblue", xlab = "Population", main = "DotChart of Occupation")
dotchart(table(MyFile$race), pch = 19, col = "darkblue", xlab = "Population", main = "DotChart of Race")

#Create the barplot of categorical variables
barplot(table(MyFile$occupation),col = "darkblue", ylab = "Population", main = "BarPlot of Occupation")
barplot(table(MyFile$race),col = "darkblue", ylab = "Population", main = "BarPlot of Race")

#This create a scaterplot of MyFile
plot(MyFile)#, col = "darkgray")

#This create indivudual scatterplot of Gold by intellignce
plot(MyFile$Gold~MyFile$intelligence, ylab = "Gold", xlab = "intelligence",col = "purple", main = "Scatterplot of Gold by Intelligence")

#This create scatterplot of Gold by education
plot(MyFile$Gold~MyFile$education, ylab = "Gold", xlab = "education",col = "darkred", main = "Scatterplot of Gold by Education")
lines(lowess(MyFile$education, MyFile$Gold), col= "black", pch = 19)

#This block create a data fram of only numeriq variables
MyData<-data.frame(MyFile$physical.strength,MyFile$intelligence,MyFile$education, MyFile$Gold)
MyData

#This create a correlation matrix
MyDataCor = cor(MyData)
MyDataCor

#This block derrive the mean of each Gold for each of the different race
meanHUMAN <- mean(MyFile$Gold[MyFile$race == "Human"])
meanGNOM <- mean(MyFile$Gold[MyFile$race == "Gnome"])
meanDWARF <- mean(MyFile$Gold[MyFile$race == "Dwarf"])
meanElf <- mean(MyFile$Gold[MyFile$race == "Elf"])

#This block derrive the median of each Gold for each of the different race
medHUMAN <- median(MyFile$Gold[MyFile$race == "Human"])
medGNOM <- median(MyFile$Gold[MyFile$race == "Gnome"])
medDWARF <- median(MyFile$Gold[MyFile$race == "Dwarf"])
medElf <- median(MyFile$Gold[MyFile$race == "Elf"])

#This block derrive the mean of each Gold for each of the different occupation
meanFARM_O <- mean(MyFile$Gold[MyFile$occupation == "Farmer"])
meanSOLD_O <- mean(MyFile$Gold[MyFile$occupation == "Soldier"])
meanMERCH_O <- mean(MyFile$Gold[MyFile$occupation == "Merchant"])
meanTHIEF_O <- mean(MyFile$Gold[MyFile$occupation == "Thief"])
meanPRIEST_O <- mean(MyFile$Gold[MyFile$occupation == "Priest of Achew"])
meanKINGG_O <- mean(MyFile$Gold[MyFile$occupation == "King's General"])
meanKINGP_O <- mean(MyFile$Gold[MyFile$occupation == "King's physician"])
meanWIZ_O <- mean(MyFile$Gold[MyFile$occupation == "Wizard"])

#This block derrive the medien of each Gold for each of the different occupation
medFARM_O <- median (MyFile$Gold[MyFile$occupation == "Farmer"])
medSOLD_O <- median (MyFile$Gold[MyFile$occupation == "Soldier"])
medMERCH_O <- median (MyFile$Gold[MyFile$occupation == "Merchant"])
medTHIEF_O <- median (MyFile$Gold[MyFile$occupation == "Thief"])
medPRIEST_O <- median (MyFile$Gold[MyFile$occupation == "Priest of Achew"])
medKINGG_O <- median (MyFile$Gold[MyFile$occupation == "King's General"])
medKINGP_O <- median (MyFile$Gold[MyFile$occupation == "King's physician"])
medWIZ_O <- median (MyFile$Gold[MyFile$occupation == "Wizard"])

#This derive the mean of Gold for those with an education less than 3 , 3 to 4.9, 5 to 6.9, and 7 or above. 
mean3 <- mean(MyFile$Gold[MyFile$education < 3])
mean33 <- mean(MyFile$Gold[MyFile$education >= 3 || MyFile$education <= 4.9])
mean5 <- mean(MyFile$Gold[MyFile$education >= 5 || MyFile$education <= 6.9])
mean7 <- mean(MyFile$Gold[MyFile$education >= 7])

#This derive the median of Gold for those with an education less than 3 , 3 to 4.9, 5 to 6.9, and 7 or above. 
med3 <- median (MyFile$Gold[MyFile$education < 3])
med33 <- median (MyFile$Gold[MyFile$education >= 3 || MyFile$education <= 4.9])
med5 <- median (MyFile$Gold[MyFile$education >= 5 || MyFile$education <= 6.9])
med7 <- median (MyFile$Gold[MyFile$education >= 7])

#This blocks create a dotchart of gold by occupation
dotchart(MyFile$Gold, groups = as.factor(MyFile$occupation), col = "darkblue", main = "DotChart of Gold by Occupation", xlab = "Population")

#This blocks create a dotchart of gold by race
dotchart(MyFile$Gold, groups = as.factor(MyFile$race), col = "darkgreen", main = "DotChart of Gold by Race")

#This blocks create a bloxplot of gold by education
boxplot(MyFile$Gold, groups = as.factor(MyFile$education), col = "beige", main = "DotChart of gold by Education")

