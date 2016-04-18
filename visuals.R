CI(test[test$clustname==1,"environment"])
CI(test[test$clustname==2,"environment"])
CI(test[test$clustname==3,"environment"])


sd(newdata$literal)/sqrt(577)
sd(newdata$literal)/sqrt(574)
sd(newdata$literal)/sqrt(418)
newdata$selit <- c(0.001659253, 0.001663583, 0.001949451)

newdata$litlower <- newdata$literal-newdata$selit
newdata$lithigher <- newdata$literal+newdata$selit

newdata$factor <- c("30s", "50s" , "70s")

ag <- ggplot(newdata, aes(x=literal, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = litlower, xmax=lithigher))

ag + theme(axis.title.y=element_blank(),
           axis.text.y=element_blank(),
           axis.ticks=element_blank() ) +
  labs(x="Biblical Literalism") +  theme(legend.title=element_blank())