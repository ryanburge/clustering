ggplot(literal, aes(x=cluster, y=m_lit, ymin=lo_lit, ymax=hi_lit, colour=factor)) + 
  geom_linerange(size=8) +
  geom_hline(aes(x=0, yintercept=mean(gss$literal)), linetype = "longdash") +
  geom_point(size=3, shape=21, fill="black", colour = "black", stroke = 1) +
  coord_flip()  + theme(axis.title.y=element_blank(),
                        axis.text.y=element_blank(),
                        axis.ticks=element_blank() ) +
  labs(y="Biblical Literalism") +  theme(legend.title=element_blank()) + theme(legend.position = "bottom") +
  scale_x_continuous(limits = c(0.95, 3))