
CI(test[test$clustname==1,"literal"], ci = .84)
CI(test[test$clustname==2,"literal"], ci = .84)
CI(test[test$clustname==3,"literal"], ci = .84)

literal <- read.csv("D:/clustering/literal.csv")

literal$factor <- c("30s", "50s" , "70s")


g1 <- ggplot(literal, aes(x=m_lit, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = lo_lit, xmax=hi_lit), height=0)


g1 + theme(axis.title.y=element_blank(),
           axis.text.y=element_blank(),
           axis.ticks=element_blank() ) +
  labs(x="Biblical Literalism") +  theme(legend.title=element_blank()) + geom_vline(xintercept = mean(gss$literal), linetype = "longdash") + theme(legend.position = "bottom") +  theme(text=element_text(size=16, family="Georgia"))

CI(test[test$clustname==1,"attnd"])
CI(test[test$clustname==2,"attnd"])
CI(test[test$clustname==3,"attnd"])


attnd <- read.csv("D:/clustering/attnd.csv")

attnd$factor <- c("30s", "50s" , "70s")


g2 <- ggplot(attnd, aes(x=mean, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = lo, xmax=hi), height =0)


g2 + theme(axis.title.y=element_blank(),
           axis.text.y=element_blank(),
           axis.ticks=element_blank() ) +
  labs(x="Church Attendance") +  theme(legend.title=element_blank()) + geom_vline(xintercept = mean(gss$attnd), linetype = "longdash") + theme(legend.position = "bottom") +  theme(text=element_text(size=16, family="Georgia"))

CI(test[test$clustname==1,"tolerance"])
CI(test[test$clustname==2,"tolerance"])
CI(test[test$clustname==3,"tolerance"])

tolerance <- read.csv("D:/clustering/tolerance.csv")

tolerance$factor <- c("30s", "50s" , "70s")

g3 <- ggplot(tolerance, aes(x=mean, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = lo, xmax=hi), height =0)


g3 + theme(axis.title.y=element_blank(),
           axis.text.y=element_blank(),
           axis.ticks=element_blank() ) +
  labs(x="Tolerance") +  theme(legend.title=element_blank()) + geom_vline(xintercept = mean(gss$tolerance), linetype = "longdash") + theme(legend.position = "bottom") +  theme(text=element_text(size=16, family="Georgia"))

CI(test[test$clustname==1,"abortion"])
CI(test[test$clustname==2,"abortion"])
CI(test[test$clustname==3,"abortion"])

abortion <- read.csv("D:/clustering/abortion.csv")

abortion$factor <- c("30s", "50s" , "70s")


g4 <- ggplot(abortion, aes(x=mean, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = abortion$lo, xmax=abortion$hi), height =0)


g4 + theme(axis.title.y=element_blank(),
           axis.text.y=element_blank(),
           axis.ticks=element_blank() ) +
  labs(x="Abortion Under Any Circumstance") +  theme(legend.title=element_blank()) + geom_vline(xintercept = mean(gss$abortion), linetype = "longdash") + theme(legend.position = "bottom") +  theme(text=element_text(size=16, family="Georgia"))

CI(test[test$clustname==1,"gaymarriage"])
CI(test[test$clustname==2,"gaymarriage"])
CI(test[test$clustname==3,"gaymarriage"])

gaymarriage <- read.csv("D:/clustering/gaymarriage.csv")

gaymarriage$factor <- c("30s", "50s" , "70s")


g5 <- ggplot(gaymarriage, aes(x=mean, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = gaymarriage$lo, xmax=gaymarriage$hi), height =0)


g5 + theme(axis.title.y=element_blank(),
           axis.text.y=element_blank(),
           axis.ticks=element_blank() ) +
  labs(x="Gay Marriage (Strongly Agree) ") +  theme(legend.title=element_blank()) + geom_vline(xintercept = mean(gss$gaymarriage), linetype = "longdash") + theme(legend.position = "bottom") +  theme(text=element_text(size=16, family="Georgia"))

CI(test[test$clustname==1,"gaysex"])
CI(test[test$clustname==2,"gaysex"])
CI(test[test$clustname==3,"gaysex"])

gaysex <- read.csv("D:/clustering/gaysex.csv")

gaysex$factor <- c("30s", "50s" , "70s")


g6 <- ggplot(gaysex, aes(x=mean, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = gaysex$lo, xmax=gaysex$hi), height =0)


g6 + theme(axis.title.y=element_blank(),
           axis.text.y=element_blank(),
           axis.ticks=element_blank() ) +
  labs(x="Homosexual Sex (Not Wrong at All) ") +  theme(legend.title=element_blank()) + geom_vline(xintercept = mean(gss$gaysex), linetype = "longdash") + theme(legend.position = "bottom") +  theme(text=element_text(size=16, family="Georgia"))

CI(test[test$clustname==1,"repubid"])
CI(test[test$clustname==2,"repubid"])
CI(test[test$clustname==3,"repubid"])

repubid <- read.csv("D:/clustering/repubid.csv")

repubid$factor <- c("30s", "50s" , "70s")


g7 <- ggplot(repubid, aes(x=mean, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = repubid$lo, xmax=repubid$hi), height =0)


g7 + theme(axis.title.y=element_blank(),
           axis.text.y=element_blank(),
           axis.ticks=element_blank() ) +
  labs(x="Republican Party Identification") +  theme(legend.title=element_blank()) + geom_vline(xintercept = mean(gss$repubid), linetype = "longdash") + theme(legend.position = "bottom") +  theme(text=element_text(size=16, family="Georgia"))

CI(test[test$clustname==1,"welfare"])
CI(test[test$clustname==2,"welfare"])
CI(test[test$clustname==3,"welfare"])

welfare <- read.csv("D:/clustering/welfare.csv")

welfare$factor <- c("30s", "50s" , "70s")


g8 <- ggplot(welfare, aes(x=mean, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = welfare$lo, xmax=welfare$hi), height =0)


g8 + theme(axis.title.y=element_blank(),
           axis.text.y=element_blank(),
           axis.ticks=element_blank() ) +
  labs(x="Spend More on Welfare Programs") +  theme(legend.title=element_blank()) + geom_vline(xintercept = mean(gss$welfare), linetype = "longdash") + theme(legend.position = "bottom") +  theme(text=element_text(size=16, family="Georgia"))

CI(test[test$clustname==1,"environment"])
CI(test[test$clustname==2,"environment"])
CI(test[test$clustname==3,"environment"])

environment <- read.csv("D:/clustering/environment.csv")

environment$factor <- c("30s", "50s" , "70s")


g9 <- ggplot(environment, aes(x=mean, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = environment$lo, xmax=environment$hi), height =0)


g9 + theme(axis.title.y=element_blank(),
           axis.text.y=element_blank(),
           axis.ticks=element_blank() ) +
  labs(x="Spend More on Environmental Programs") +  theme(legend.title=element_blank()) + geom_vline(xintercept = mean(gss$environment), linetype = "longdash") + theme(legend.position = "bottom") +  theme(text=element_text(size=16, family="Georgia"))

CI(test[test$clustname==1,"drugs"])
CI(test[test$clustname==2,"drugs"])
CI(test[test$clustname==3,"drugs"])

drugs <- read.csv("D:/clustering/drugs.csv")

drugs$factor <- c("30s", "50s" , "70s")


g10 <- ggplot(drugs, aes(x=mean, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = drugs$lo, xmax=drugs$hi), height =0)


g10 + theme(axis.title.y=element_blank(),
           axis.text.y=element_blank(),
           axis.ticks=element_blank() ) +
  labs(x="Spend More on Drug Programs") +  theme(legend.title=element_blank()) + geom_vline(xintercept = mean(gss$drugs), linetype = "longdash") + theme(legend.position = "bottom") +  theme(text=element_text(size=16, family="Georgia"))


