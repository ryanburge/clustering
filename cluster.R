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
ggplot(test, aes(dp$proj[,1], dp$proj[,2], color=factor(k$cluster)))+geom_point(pch=19,size=2)+ggtitle("Evangelical Cluster Visualization")

ggplot(test, aes(dp$proj[,1], dp$proj[,2], color=factor(test$literal)))+geom_point(pch=19,size=2)+facet_grid(clustname~.)+ggtitle("How Is Litearlism Dispersed Through the Clusters")


test$factor <- recode(test$factor, "c(1)='30s'; c(2)='50s'; c(3)= '70s'")





