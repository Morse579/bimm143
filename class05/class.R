# Class05 R graphic intro
#github_doc
# My first boxplot
x<-rnorm(1000,0)
boxplot(x)

summary(x)
hist(x)
boxplot(x,horizontal=TRUE)

#Hand-on session 2

#section2
weight <- read.table("bimm143_05_rstats/weight_chart.txt", header=TRUE)
plot(weight$Age,weight$Weight,typ="o",pch=15,
     cex=1.5,lwd=2,ylim=c(2,10),xlab="Age(months)",
     ylab="Weight(kg)",
     main = "Bbay weight with age")
feature <- read.table("bimm143_05_rstats/feature_counts.txt",sep="\t", header=TRUE)
barplot(feature$Count)

barplot(VADeaths,beside = TRUE)
barplot(VADeaths,beside = FALSE)
par(mar=c(3.1,11.1,4.1,2))
barplot(feature$Count, names.arg=feature$Feature,
        horiz=TRUE,ylab="",
        main = "Number of feature in the mouse GRCm38 genome",
        las=1,xlim=c(0,80000))

x<-c(rnorm(10000),rnorm(10000)+4)
hist(x,breaks=80)

counts<-read.delim("bimm143_05_rstats/male_female_counts.txt")
barplot(counts$Count,names.arg=counts$Sample,col=c("red2","blue2"),las=2,
        ylab="Counts")

genes<-read.delim("bimm143_05_rstats/up_down_expression.txt")
table(genes$State)

plot(genes$Condition1,genes$Condition2,col=genes$State,
     xlab="Expression condition 1",ylab="Expression condition 2")

#lecture 06