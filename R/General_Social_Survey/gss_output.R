MD2 <- read.csv(file.choose())
MD2U <- read.csv(file.choose())
table_MD2 <- table(MD2$God,MD2$Happy)

#1
chisq.test(MD2$God, MD2$Happy)
#3
chisq.test(table(MD2$Happy[MD2$God=="Atheist"]), p= c(0.25,0.55,0.20))
#5
chisq.test(table(MD2$Happy[MD2$God=="Believe without a doubt"]), p= c(0.25,0.55,0.20))
#7
binom.test(140, 162, p=1/6)
binom.test(8,12,p=.2)
chisq.test(table(MD2$afterlife[MD2$God == "Don't know, no way to find out"]), p=c(1/6, 1/6,1/6))
#9
chisq.test(table(MD2$Degree,MD2$Happy))
#1111
chisq.test(MD2$Happy,MD2$Degree)
#12-13
t.test(MD2$Years.of.school, mu=14.81,alternative = c("greater"))
#14
t.test(MD2$Years.of.school[MD2$Born.in.the.US.=="Yes"], MD2$Years.of.school[MD2$Born.in.the.US.=="No"],alternative = c("greater"))

#16-17
wilcox.test(MD2$Years.of.school[MD2$Born.in.the.US.=="Yes"], MD2$Years.of.school[MD2$Born.in.the.US.=="No"])
#18
t.test(MD2$num.children[MD2$Years.of.school >= 16],MD2$num.children[MD2$Years.of.school <= 12], alternative = c("less"))

#19
t.test(MD2$num.children[MD2$Degree=="Graduate degree" & MD2$sex == "female" & MD2$age>=45],mu=2.12)

#20
t.test(MD2$num.children[MD2$Degree=="High School" & MD2$sex == "female" & MD2$age>=45],mu=2.12)
#21
t.test(MD2$num.children[MD2$age>=65],MD2$num.children[MD2$age>=45 &  MD2$age<=64],alternative = c("greater"))
#22
chisq.test(table(MD2$Degree[MD2$sex=="male"]), p= c(0.092, 0.260,0.197,0.403,0.048))

#23
chisq.test(table(MD2$Degree[MD2$sex=="female"]), p= c(0.092, 0.260,0.197,0.403,0.048))
#24
t.test(MD2$Years.of.school[MD2$sex=="male"],MD2$Years.of.school[MD2$sex=="female"]) 
#25
t.test(MD2U$Grog,MD2U$Grug,paired = T)
#26
shapiro.test(MD2U$Grog)
#27
shapiro.test(MD2U$Grug)









