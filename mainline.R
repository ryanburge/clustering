
mline <- gss %>% filter(year >=2008 & mainline ==1)


mline$literal <- recode(mline$bible, "1=1; else=0")
mline$attnd <- mline$attend/8
mline$attnd[is.na(mline$attnd)] <-0
gss$attnd <- gss$attend/8
gss$attnd[is.na(gss$attnd)] <-0
mline$male <- mline$sex
mline$male <- recode(mline$male, "1=1; else=0")

mline$atheist <- mline$spkath
mline$atheist <- recode(mline$atheist, "1=1; 2=0; else=0")
mline$atheist2 <- mline$colath
mline$atheist2 <- recode(mline$atheist2, "4=1; 5=0; else=0")
mline$atheist3 <- mline$libath
mline$atheist3 <- recode(mline$atheist3, "2=1; 1=0; else=0")
mline$racist <- mline$spkrac
mline$racist <- recode(mline$racist, "1=1; 2=0; else=0")
mline$racist2 <- mline$colrac
mline$racist2 <- recode(mline$racist2, "4=1; 5=0; else=0")
mline$racist3 <- mline$librac
mline$racist3 <- recode(mline$racist3, "2=1; 1=0; else=0")
mline$mili <- mline$spkmil
mline$mili <- recode(mline$mili, "1=1; 2=0; else=0")
mline$mili2 <- mline$colmil
mline$mili2 <- recode(mline$mili2, "4=1; 5=0; else=0")
mline$mili3 <- mline$libmil
mline$mili3 <- recode(mline$mili3, "2=1; 1=0; else=0")
mline$comm <- mline$spkcom
mline$comm <- recode(mline$comm, "1=1; 2=0; else=0")
mline$comm2 <- mline$colcom
mline$comm2 <- recode(mline$comm2, "5=1; 4=0; else=0")
mline$comm3 <- mline$libcom
mline$comm3 <- recode(mline$comm3, "2=1; 1=0; else=0")
mline$homo <- mline$spkhomo
mline$homo <- recode(mline$homo, "1=1; 2=0; else=0")
mline$homo2 <- mline$colhomo
mline$homo2 <- recode(mline$homo2, "4=1; 5=0; else=0")
mline$homo3 <- mline$libhomo
mline$homo3 <- recode(mline$homo3, "2=1; 1=0; else=0")
mline$tolerance <- mline$atheist + mline$atheist2 + mline$atheist3 + mline$racist + mline$racist2 + mline$racist3 + mline$comm + mline$comm2 + mline$comm3 + mline$mili + mline$mili2 + mline$mili3 + mline$homo + mline$homo2 + mline$homo3
mline$tolerance <- mline$tolerance/15

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


mline$abortion <- mline$abany
mline$abortion <- recode(mline$abortion, "1=1; else=0")
gss$abortion <- gss$abany
gss$abortion <- recode(gss$abortion, "1=1; else=0")

mline$gaymarriage <- mline$marhomo
mline$gaymarriage <- recode(mline$gaymarriage, "1=1; else=0")
gss$gaymarriage <- gss$marhomo
gss$gaymarriage <- recode(gss$gaymarriage, "1=1; else=0")

mline$gaysex <- mline$homosex
mline$gaysex <- recode(mline$gaysex, "4=1; else=0")

gss$gaysex <- gss$homosex
gss$gaysex <- recode(gss$gaysex, "4=1; else=0")


mline$repubid <- mline$partyid
mline$repubid <- recode(mline$repubid, "0=1; 1=2; 2=3; 3=4; 4=5; 5=6; 6=7; 7=0; 8=0; 9=0")
mline$repubid[is.na(mline$repubid)] <-0

gss$repubid <- gss$partyid
gss$repubid <- recode(gss$repubid, "0=1; 1=2; 2=3; 3=4; 4=5; 5=6; 6=7; 7=0; 8=0; 9=0")
gss$repubid[is.na(gss$repubid)] <-0

mline$welfare <- mline$natfare
mline$welfare <- recode(mline$welfare, "8=0; 9=0")
mline$welfare[is.na(mline$welfare)] <-0
mline$welfare <- mline$welfare/3
mline$military <- mline$natarmsy
mline$military <- recode(mline$military, "8=0; 9=0")
mline$military[is.na(mline$military)] <-0
mline$military <- mline$military/3
mline$environment <- mline$natenviy
mline$environment <- mline$natenviy
mline$environment <- recode(mline$environment, "1=3; 3=1; 2=2; else=0")
mline$environment <- mline$environment/3
mline$drugs <- mline$natdrug
mline$drugs <- recode(mline$drugs, "1=3; 3=1; 2=2; else=0")
mline$drugs <- mline$drugs/3

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

mline$white <- Recode(mline$race, "1=1; else=0")


test <- select(mline, age, literal, attnd, male, tolerance, abortion, gaymarriage, gaysex, repubid, welfare, military, environment, drugs, educ)

age_fit <- rpart(age ~ educ + attnd + male + tolerance + abortion + gaymarriage + gaysex + repubid + welfare + military + environment + drugs, data = test[!is.na(test$age), ],
                 method = 'anova')
test$age[is.na(test$age)] <- predict(age_fit, test[is.na(test$age), ])

educ_fit <- rpart(educ ~ age + attnd + male + tolerance + abortion + gaymarriage + gaysex + repubid + welfare + military + environment + drugs, data = test[!is.na(test$age), ],
                  method = 'anova')
test$educ[is.na(test$educ)] <- predict(educ_fit, test[is.na(test$educ), ])

test$educ <- test$educ/20
test$age <- test$age/89
test$repubid <- test$repubid/7

set.seed(62864)

wss <- (nrow(test)-1)*sum(apply(test,2,var))
for (i in 2:15) wss[i] <- sum(kmeans(test,
                                     centers=i,iter.max=1000,algorithm="MacQueen")$withinss)

plot(1:15, wss, type="b", xlab="Number of Clusters",
     ylab="Within groups sum of squares")

k<-kmeans(test, centers=3,iter.max=1000,algorithm="MacQueen")
k$size
k$centers

aggregate(test,by=list(cluster=k$cluster), FUN=mean)

dp = discrproj(test, k$cluster)
test$clustname<-k$cluster
test$clustname<-factor(test$clustname)
ggplot(test, aes(dp$proj[,1], dp$proj[,2], color=factor(k$cluster)))+geom_point(pch=19,size=2)+
  ggtitle("Mainline Protestant Cluster Visualization") + xlab("First Dimension") + ylab("Second Dimension")  +
  theme(legend.position="bottom") + theme(legend.title = element_blank()) + theme(legend.title = element_blank()) +
  theme(legend.position="bottom") +
  theme(plot.title = element_text(hjust = 0.5)) +
  theme(text=element_text(size=26, family="KerkisSans")) +
  annotate(geom="text", x=1, y=3.5, label="Cluster 1", color="black", size =6) +
  annotate(geom="text", x=3, y=-.75, label="Cluster 2", color="black", size =6) +
  annotate(geom="text", x=-2.5, y=1.75, label="Cluster 3", color="black", size =6)

ggsave(file="mline_cluster.png", type = "cairo-png", width = 15, height = 10)

##ggplot(test, aes(dp$proj[,1], dp$proj[,2], color=factor(test$literal)))+geom_point(pch=19,size=2)+facet_grid(clustname~.)+ggtitle("How Is Litearlism Dispersed Through the Clusters")


