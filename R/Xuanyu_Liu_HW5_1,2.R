if(FALSE) {
  ' Author: Xuanyu Liu
  Professor: Khasha Dehnad
  Description: this file is wroten for Homework4, knn
  How To Run:
  1.Open this file in RStudio
  2.Click the "Source" button above the code area
  '
}

##5.1
rm(list=ls())

# Define normalized function
normlized <- function(x, min, max) {
  res <- (x - min)/(max - min)
  return (res)
}

# Create vectors (x, y)
x <- c(7,10,13,21,28,28,35,43,44,50)
y <- c(57,62,63,71,78,88,89,90,94,98)

#normalize x, y
x <- normlized(x,min(x),max(x))
y <- normlized(y,min(y),max(y))

# Hierarchical Clustering
xy <- cbind(x,y)
# find distance matrix
dxy <- dist(xy)
# apply hirarchical clustering with average linkage
?hclust()
hxy <- hclust(dxy, method = "average")
# plot the dendrogram
plot(hxy)

##5.2
CHURN <- read.csv("/Users/Serena/Documents/DataMining/churn.csv")
# set "yes" = 1, "no" = 0
#Get factors in numeric form
Int <- as.numeric(CHURN$Int.l.Plan)
VMail <- as.numeric(CHURN$VMail.Plan)

Int_norm <- normlized(Int, min(Int), max(Int))
VMail_norm <- normlized(VMail, min(VMail), max(VMail))
CustServ_norm <- normlized(CHURN$CustServ.Calls, min(CHURN$CustServ.Calls), max(CHURN$CustServ.Calls))
subChurn <- cbind(Int_norm,VMail_norm,CustServ_norm)
colnames(subChurn) <- c("Int.l.Plan", "VMail.Plan", "CustServ.Calls")
# K-Means Clustering with 3 clusters
?kmeans()
clxy <- kmeans(subChurn,3)
# vary parameters for most readable graph
clxy$cluster
clxy$centers
plot(subChurn, col=clxy$cluster )
points(clxy$centers, col=1:3,pch=2,cex=2)
