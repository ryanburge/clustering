library(haven)
library(dplyr)
library(rpart)
library(fpc)
library(ggplot2)
library(car)


gss <- read_dta("C:/Users/Ryan Burge/Desktop/gss_reltrad.dta")

evan <- gss %>% filter(year >=2008 & evangelical ==1)


evan$literal <- recode(evan$bible, "1=1; else=0")
evan$attnd <- evan$attend/8
evan$attnd[is.na(evan$attnd)] <-0
gss$attnd <- gss$attend/8
gss$attnd[is.na(gss$attnd)] <-0
evan$male <- evan$sex
evan$male <- recode(evan$male, "1=1; else=0")

evan$atheist <- evan$spkath
evan$atheist <- recode(evan$atheist, "1=1; 2=0; else=0")
evan$atheist2 <- evan$colath
evan$atheist2 <- recode(evan$atheist2, "4=1; 5=0; else=0")
evan$atheist3 <- evan$libath
evan$atheist3 <- recode(evan$atheist3, "2=1; 1=0; else=0")
evan$racist <- evan$spkrac
evan$racist <- recode(evan$racist, "1=1; 2=0; else=0")
evan$racist2 <- evan$colrac
evan$racist2 <- recode(evan$racist2, "4=1; 5=0; else=0")
evan$racist3 <- evan$librac
evan$racist3 <- recode(evan$racist3, "2=1; 1=0; else=0")
evan$mili <- evan$spkmil
evan$mili <- recode(evan$mili, "1=1; 2=0; else=0")
evan$mili2 <- evan$colmil
evan$mili2 <- recode(evan$mili2, "4=1; 5=0; else=0")
evan$mili3 <- evan$libmil
evan$mili3 <- recode(evan$mili3, "2=1; 1=0; else=0")
evan$comm <- evan$spkcom
evan$comm <- recode(evan$comm, "1=1; 2=0; else=0")
evan$comm2 <- evan$colcom
evan$comm2 <- recode(evan$comm2, "5=1; 4=0; else=0")
evan$comm3 <- evan$libcom
evan$comm3 <- recode(evan$comm3, "2=1; 1=0; else=0")
evan$homo <- evan$spkhomo
evan$homo <- recode(evan$homo, "1=1; 2=0; else=0")
evan$homo2 <- evan$colhomo
evan$homo2 <- recode(evan$homo2, "4=1; 5=0; else=0")
evan$homo3 <- evan$libhomo
evan$homo3 <- recode(evan$homo3, "2=1; 1=0; else=0")
evan$tolerance <- evan$atheist + evan$atheist2 + evan$atheist3 + evan$racist + evan$racist2 + evan$racist3 + evan$comm + evan$comm2 + evan$comm3 + evan$mili + evan$mili2 + evan$mili3 + evan$homo + evan$homo2 + evan$homo3
evan$tolerance <- evan$tolerance/15

gss$atheist <- gss$spkath
gss$atheist <- recode(gss$atheist, "1=1; 2=0; else=0")
gss$atheist2 <- gss$colath
gss$atheist2 <- recode(gss$atheist2, "4=1; 5=0; else=0")
gss$atheist3 <- gss$libath
gss$atheist3 <- recode(gss$atheist3, "2=1; 1=0; else=0")
gss$racist <- gss$spkrac
gss$racist <- recode(gss$racist, "1=1; 2=0; else=0")
gss$racist2 <- gss$colrac
gss$racist2 <- recode(gss$racist2, "4=1; 5=0; else=0")
gss$racist3 <- gss$librac
gss$racist3 <- recode(gss$racist3, "2=1; 1=0; else=0")
gss$mili <- gss$spkmil
gss$mili <- recode(gss$mili, "1=1; 2=0; else=0")
gss$mili2 <- gss$colmil
gss$mili2 <- recode(gss$mili2, "4=1; 5=0; else=0")
gss$mili3 <- gss$libmil
gss$mili3 <- recode(gss$mili3, "2=1; 1=0; else=0")
gss$comm <- gss$spkcom
gss$comm <- recode(gss$comm, "1=1; 2=0; else=0")
gss$comm2 <- gss$colcom
gss$comm2 <- recode(gss$comm2, "5=1; 4=0; else=0")
gss$comm3 <- gss$libcom
gss$comm3 <- recode(gss$comm3, "2=1; 1=0; else=0")
gss$homo <- gss$spkhomo
gss$homo <- recode(gss$homo, "1=1; 2=0; else=0")
gss$homo2 <- gss$colhomo
gss$homo2 <- recode(gss$homo2, "4=1; 5=0; else=0")
gss$homo3 <- gss$libhomo
gss$homo3 <- recode(gss$homo3, "2=1; 1=0; else=0")
gss$tolerance <- gss$atheist + gss$atheist2 + gss$atheist3 + gss$racist + gss$racist2 + gss$racist3 + gss$comm + gss$comm2 + gss$comm3 + gss$mili + gss$mili2 + gss$mili3 + gss$homo + gss$homo2 + gss$homo3
gss$tolerance <- gss$tolerance/15


evan$abortion <- evan$abany
evan$abortion <- recode(evan$abortion, "1=1; else=0")
gss$abortion <- gss$abany
gss$abortion <- recode(gss$abortion, "1=1; else=0")

evan$gaymarriage <- evan$marhomo
evan$gaymarriage <- recode(evan$gaymarriage, "1=1; else=0")
gss$gaymarriage <- gss$marhomo
gss$gaymarriage <- recode(gss$gaymarriage, "1=1; else=0")

evan$gaysex <- evan$homosex
evan$gaysex <- recode(evan$gaysex, "4=1; else=0")

gss$gaysex <- gss$homosex
gss$gaysex <- recode(gss$gaysex, "4=1; else=0")


evan$repubid <- evan$partyid
evan$repubid <- recode(evan$repubid, "0=1; 1=2; 2=3; 3=4; 4=5; 5=6; 6=7; 7=0; 8=0; 9=0")
evan$repubid[is.na(evan$repubid)] <-0

gss$repubid <- gss$partyid
gss$repubid <- recode(gss$repubid, "0=1; 1=2; 2=3; 3=4; 4=5; 5=6; 6=7; 7=0; 8=0; 9=0")
gss$repubid[is.na(gss$repubid)] <-0

evan$welfare <- evan$natfare
evan$welfare <- recode(evan$welfare, "8=0; 9=0")
evan$welfare[is.na(evan$welfare)] <-0
evan$welfare <- evan$welfare/3
evan$military <- evan$natarmsy
evan$military <- recode(evan$military, "8=0; 9=0")
evan$military[is.na(evan$military)] <-0
evan$military <- evan$military/3
evan$environment <- evan$natenviy
evan$environment <- evan$natenviy
evan$environment <- recode(evan$environment, "1=3; 3=1; 2=2; else=0")
evan$environment <- evan$environment/3
evan$drugs <- evan$natdrug
evan$drugs <- recode(evan$drugs, "1=3; 3=1; 2=2; else=0")
evan$drugs <- evan$drugs/3

gss$welfare <- gss$natfare
gss$welfare <- recode(gss$welfare, "8=0; 9=0")
gss$welfare[is.na(gss$welfare)] <-0
gss$welfare <- gss$welfare/3
gss$military <- gss$natarmsy
gss$military <- recode(gss$military, "8=0; 9=0")
gss$military[is.na(gss$military)] <-0
gss$military <- gss$military/3
gss$environment <- gss$natenviy
gss$environment <- gss$natenviy
gss$environment <- recode(gss$environment, "1=3; 3=1; 2=2; else=0")
gss$environment <- gss$environment/3
gss$drugs <- gss$natdrug
gss$drugs <- recode(gss$drugs, "1=3; 3=1; 2=2; else=0")
gss$drugs <- gss$drugs/3



test <- select(evan, age, literal, attnd, male, tolerance, abortion, gaymarriage, gaysex, repubid, welfare, military, environment, drugs, educ)

age_fit <- rpart(age ~ educ + attnd + male + tolerance + abortion + gaymarriage + gaysex + repubid + welfare + military + environment + drugs, data = test[!is.na(test$age), ],
                 method = 'anova')
test$age[is.na(test$age)] <- predict(age_fit, test[is.na(test$age), ])

educ_fit <- rpart(educ ~ age + attnd + male + tolerance + abortion + gaymarriage + gaysex + repubid + welfare + military + environment + drugs, data = test[!is.na(test$age), ],
                  method = 'anova')
test$educ[is.na(test$educ)] <- predict(educ_fit, test[is.na(test$educ), ])

test$educ <- test$educ/20
test$age <- test$age/89
test$repubid <- test$repubid/7
