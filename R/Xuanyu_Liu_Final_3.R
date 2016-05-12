
# Clear the memory
rm(list = ls())

# Creat a data set
#points <- c(a,b,c,d,e,f,g)
x <- c(1,5,4,4,1,4,2)
y <- c(1,3,4,3,2,4,1)
z <- c(1,4,5,4,1,4,2)
data <- as.data.frame(cbind(x,y,z))

View(data)

#####################################
#  Set K = 2 two cluster centers.
results2 <- kmeans(data, 2)
results2

1.
# Check the members of each cluster
results2$cluster
# The number of points in each cluster.
results2$size

2.
# Check the matrix of cluster centres.
results2$centers

3.
# Internal Index: Used to measure the goodness of a clustering structure without 
#                 respect to external information

# Cluster Separation: Measure how distinct or well-separated a cluster is from other clusters
# The between-cluster sum of squares
results2$betweenss

#Cluster Cohesion: Measures how closely related are objects in a cluster
# Vector of within-cluster sum of squares
results2$withinss
# Plot the clusters
plot(results2$cluster)

#####################################


