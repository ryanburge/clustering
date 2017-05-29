

cath <- gss %>% filter(year >=2008 & catholic ==1)


cath$literal <- recode(cath$bible, "1=1; else=0")
cath$attnd <- cath$attend/8
cath$attnd[is.na(cath$attnd)] <-0
gss$attnd <- gss$attend/8
gss$attnd[is.na(gss$attnd)] <-0
cath$male <- cath$sex
cath$male <- recode(cath$male, "1=1; else=0")

cath$atheist <- cath$spkath
cath$atheist <- recode(cath$atheist, "1=1; 2=0; else=0")
cath$atheist2 <- cath$colath
cath$atheist2 <- recode(cath$atheist2, "4=1; 5=0; else=0")
cath$atheist3 <- cath$libath
cath$atheist3 <- recode(cath$atheist3, "2=1; 1=0; else=0")
cath$racist <- cath$spkrac
cath$racist <- recode(cath$racist, "1=1; 2=0; else=0")
cath$racist2 <- cath$colrac
cath$racist2 <- recode(cath$racist2, "4=1; 5=0; else=0")
cath$racist3 <- cath$librac
cath$racist3 <- recode(cath$racist3, "2=1; 1=0; else=0")
cath$mili <- cath$spkmil
cath$mili <- recode(cath$mili, "1=1; 2=0; else=0")
cath$mili2 <- cath$colmil
cath$mili2 <- recode(cath$mili2, "4=1; 5=0; else=0")
cath$mili3 <- cath$libmil
cath$mili3 <- recode(cath$mili3, "2=1; 1=0; else=0")
cath$comm <- cath$spkcom
cath$comm <- recode(cath$comm, "1=1; 2=0; else=0")
cath$comm2 <- cath$colcom
cath$comm2 <- recode(cath$comm2, "5=1; 4=0; else=0")
cath$comm3 <- cath$libcom
cath$comm3 <- recode(cath$comm3, "2=1; 1=0; else=0")
cath$homo <- cath$spkhomo
cath$homo <- recode(cath$homo, "1=1; 2=0; else=0")
cath$homo2 <- cath$colhomo
cath$homo2 <- recode(cath$homo2, "4=1; 5=0; else=0")
cath$homo3 <- cath$libhomo
cath$homo3 <- recode(cath$homo3, "2=1; 1=0; else=0")
cath$tolerance <- cath$atheist + cath$atheist2 + cath$atheist3 + cath$racist + cath$racist2 + cath$racist3 + cath$comm + cath$comm2 + cath$comm3 + cath$mili + cath$mili2 + cath$mili3 + cath$homo + cath$homo2 + cath$homo3
cath$tolerance <- cath$tolerance/15

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


cath$abortion <- cath$abany
cath$abortion <- recode(cath$abortion, "1=1; else=0")
gss$abortion <- gss$abany
gss$abortion <- recode(gss$abortion, "1=1; else=0")

cath$gaymarriage <- cath$marhomo
cath$gaymarriage <- recode(cath$gaymarriage, "1=1; else=0")
gss$gaymarriage <- gss$marhomo
gss$gaymarriage <- recode(gss$gaymarriage, "1=1; else=0")

cath$gaysex <- cath$homosex
cath$gaysex <- recode(cath$gaysex, "4=1; else=0")

gss$gaysex <- gss$homosex
gss$gaysex <- recode(gss$gaysex, "4=1; else=0")


cath$repubid <- cath$partyid
cath$repubid <- recode(cath$repubid, "0=1; 1=2; 2=3; 3=4; 4=5; 5=6; 6=7; 7=0; 8=0; 9=0")
cath$repubid[is.na(cath$repubid)] <-0

gss$repubid <- gss$partyid
gss$repubid <- recode(gss$repubid, "0=1; 1=2; 2=3; 3=4; 4=5; 5=6; 6=7; 7=0; 8=0; 9=0")
gss$repubid[is.na(gss$repubid)] <-0

cath$welfare <- cath$natfare
cath$welfare <- recode(cath$welfare, "8=0; 9=0")
cath$welfare[is.na(cath$welfare)] <-0
cath$welfare <- cath$welfare/3
cath$military <- cath$natarmsy
cath$military <- recode(cath$military, "8=0; 9=0")
cath$military[is.na(cath$military)] <-0
cath$military <- cath$military/3
cath$environment <- cath$natenviy
cath$environment <- cath$natenviy
cath$environment <- recode(cath$environment, "1=3; 3=1; 2=2; else=0")
cath$environment <- cath$environment/3
cath$drugs <- cath$natdrug
cath$drugs <- recode(cath$drugs, "1=3; 3=1; 2=2; else=0")
cath$drugs <- cath$drugs/3

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

cath$white <- Recode(cath$race, "1=1; else=0")

test <- select(cath, age, literal, attnd, white, male, tolerance, abortion, gaymarriage, gaysex, repubid, welfare, military, environment, drugs, educ)

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
  ggtitle("Catholic Cluster Visualization") + xlab("First Dimension") + ylab("Second Dimension")  +
  theme(legend.position="bottom") + theme(legend.title = element_blank()) + theme(legend.title = element_blank()) +
  theme(legend.position="bottom") +
  theme(plot.title = element_text(hjust = 0.5)) +
  theme(text=element_text(size=26, family="KerkisSans")) +
  annotate(geom="text", x=3.5, y=1.5, label="Cluster 1", color="black", size =6) +
  annotate(geom="text", x=3.55, y=3.25, label="Cluster 1", color="black", size =6) +
  annotate(geom="text", x=-2.5, y=1.5, label="Cluster 2", color="black", size =6) +
  annotate(geom="text", x=-2.5, y=3.25, label="Cluster 3", color="black", size =6)

ggsave(file="cath_cluster.png", type = "cairo-png", width = 15, height = 10)

#ggplot(test, aes(dp$proj[,1], dp$proj[,2], color=factor(test$literal)))+geom_point(pch=19,size=2)+facet_grid(clustname~.)+ggtitle("How Is Litearlism Dispersed Through the Clusters")


