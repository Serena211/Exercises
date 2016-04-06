# Question #4

# Remove all members in List
rm(list=ls())


# Create vectors (x, y) according to this question requirements
x <- c(45,48,6,42,49,63,81,56,21,75)
y <- c(25,48,56,24,73,82,62,80,86,88)

# Define normalized function: norm = (x - min)/(max - min)
normlized <- function(x, min, max) {
  res <- (x - min)/(max - min)
  return (res)
}

# Normalize x, y 
x <- normlized(x,min(x),max(x))
y <- normlized(y,min(y),max(y))

# Combine x, y by columns
xy <- cbind(x,y)

# Get the distance matrix
dxy <- dist(xy)

# Apply hirarchical clustering with "average" linkage
?hclust() # Check if hclust() has been installed

hxy <- hclust(dxy, method = "average")

# Plot the dendrogram
plot(hxy)