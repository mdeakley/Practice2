# Lab 2 for the Stats course

library(psych)
load(url("http://s3.amazonaws.com/assets.datacamp.com/course/dasi/kobe.RData"))
head(kobe)
names(kobe)
kobe$basket[1:9]

kobe_streak <- calc_streak(kobe$basket)
barplot(table(kobe_streak))

summary(kobe_streak)
hist(kobe_streak)
median(kobe_steak)

##Question 6
outcomes <- c("heads","tails")
sample(outcomes, size = 1, replace = TRUE)

sim_fair_coin <- sample(outcomes, size = 100, replace = TRUE)
sim_fair_coin
table(sim_fair_coin)

sim_fair_coin <- sample(outcomes, size = 100, replace = TRUE, prob= c(0.2, 0.8))
sim_fair_coin
table(sim_fair_coin)


outcomes <- c("H","M")
simbasket <- sample(outcomes, size = 133, replace = TRUE)
table(simbasket)

simbasket <- sample(outcomes, size = 133, replace = TRUE, prob = c(0.45, 0.55))
table(simbasket)

kobe$basket
simbasket

table(kobe$basket)
table(simbasket)

simstreak <- calc_streak(simbasket)
hist(simstreak)

par(mfrow = c(2, 2))
hist(simstreak)
hist(kobe_streak)
