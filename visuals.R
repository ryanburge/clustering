
CI(test[test$clustname==1,"literal"])
CI(test[test$clustname==2,"literal"])
CI(test[test$clustname==3,"literal"])

literal <- read.csv("D:/literal.csv")

literal$factor <- c("30s", "50s" , "70s")


<<<<<<< HEAD
g1 <- ggplot(literal, aes(x=m_lit, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = lo_lit, xmax=hi_lit), height=0)


g1 + theme(axis.title.y=element_blank(),
           axis.text.y=element_blank(),
           axis.ticks=element_blank() ) +
  labs(x="Biblical Literalism") +  theme(legend.title=element_blank()) + geom_vline(xintercept = mean(gss$literal), linetype = "longdash") + theme(legend.position = "bottom")

CI(test[test$clustname==1,"attnd"])
CI(test[test$clustname==2,"attnd"])
CI(test[test$clustname==3,"attnd"])

g2 <- ggplot(attnd, aes(x=mean, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = lo, xmax=hi), height =0)


g2 + theme(axis.title.y=element_blank(),
           axis.text.y=element_blank(),
           axis.ticks=element_blank() ) +
  labs(x="Biblical Literalism") +  theme(legend.title=element_blank()) + geom_vline(xintercept = mean(gss$attnd), linetype = "longdash") + theme(legend.position = "bottom")

CI(test[test$clustname==1,"tolerance"])
CI(test[test$clustname==2,"tolerance"])
CI(test[test$clustname==3,"tolerance"])

g3 <- ggplot(tolerance, aes(x=mean, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = lo, xmax=hi), height =0)


g3 + theme(axis.title.y=element_blank(),
           axis.text.y=element_blank(),
           axis.ticks=element_blank() ) +
  labs(x="Tolerance") +  theme(legend.title=element_blank()) + geom_vline(xintercept = mean(gss$tolerance), linetype = "longdash") + theme(legend.position = "bottom")
=======
ag <- ggplot(literal, aes(x=m_lit, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = lo_lit, xmax=hi_lit))

ag <- ggplot(newdata, aes(x=literal, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = litlower, xmax=lithigher))


ag + theme(axis.title.y=element_blank(),
           +            axis.text.y=element_blank(),
           +            axis.ticks=element_blank() ) +
  +     labs(x="Biblical Literalism") +  theme(legend.title=element_blank()) + geom_vline(xintercept = .323, linetype = "longdash")
>>>>>>> be73b91505807ddac73728c93e2b591a39e781ee
