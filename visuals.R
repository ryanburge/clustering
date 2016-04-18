
CI(test[test$clustname==1,"literal"])
CI(test[test$clustname==2,"literal"])
CI(test[test$clustname==3,"literal"])

literal <- read.csv("D:/literal.csv")

literal$factor <- c("30s", "50s" , "70s")


ag <- ggplot(literal, aes(x=m_lit, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = lo_lit, xmax=hi_lit))

ag <- ggplot(newdata, aes(x=literal, y=cluster, colour=factor)) + geom_point() + geom_errorbarh(aes(xmin = litlower, xmax=lithigher))

ag + theme(axis.title.y=element_blank(),
           axis.text.y=element_blank(),
           axis.ticks=element_blank() ) +
    labs(x="Biblical Literalism") +  theme(legend.title=element_blank()) + geom_vline(xintercept = .323, linetype = "longdash")
