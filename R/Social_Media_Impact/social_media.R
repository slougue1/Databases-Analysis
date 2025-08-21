# Experiment meta
experiment <- read.csv(file.choose())
#Senate polls Georgia
senate <- read.csv(file.choose())
# - Schools
schools <- read.csv(file.choose())
head(experiment)
head(senate)
head(schools)

#Question1&2
table1 <- table(experiment)
binom.test(11, 38, 0.10)
#Question3&4
binom.test(7, 72, 0.05)
#Question5&6
binom.test(4, 35, 0.01)
#Question8&9
chisq.test(table(senate$fte_grade, senate$party), p=c(0.05, 0.05))
#Question10
table(senate$fte_grade, senate$party)
#Question11&12
chisq.test(table(senate$fte_grade,senate$party == "DEM"), p = c(1/2,2/5,1/10))
#Question15&16
t.test(senate$sample_size[senate$party=="DEM"], senate$sample_size[senate$party=="REP"])
#Question18&19
t.test(schools$Math.Score.2022, mu=486)
t.test(schools$English.Score.2022, mu=488)
#Question20&21
var.test(schools$Math.Score.2019, schools$Math.Score.2022, mu=486)
#Question22&23
t.test(schools$Math.Score.2019, schools$Math.Score.2022, paired = T)
t.test(schools$English.Score.2019, schools$English.Score.2022, paired = T)
#Question26
chisq.test(table(schools$region[schools$District], schools$Issued.chrome.books.to.all.students))
#Question27
t.test(schools$Math.Score.2019, schools$Math.Score.2022)
#Question28
change <- read.csv(file.choose())
head(change)
chisq.test(table(change$Math.change[change$X..poverty=="25% or more"], change$Math.change[change$X..poverty=="Below 10%"]))
chisq.test(table(change$English.change[change$X..poverty=="25% or more"], change$English.change[change$X..poverty=="Below 10%"]))
chisq.test(table(change$English.change[change$Issued =="Yes"], change$English.change[change$Issued=="No"]))

t.test(change$English.change[change$X..poverty=="25% or more"], change$English.change[change$X..poverty=="Below 10%"])
t.test(change$Math.change[change$X..poverty=="25% or more"], change$Math.change[change$X..poverty=="Below 10%"])

bonus <- read.csv(file.choose())
head(bonus)
binom.test(522,1004, 0.502)
binom.test(435,1004, 0.503)
chisq.test(table(bonus$Your.candidate.vote=="yes", bonus$Region == "East"))

