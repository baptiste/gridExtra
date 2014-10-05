library(ggplot2)
library(lattice)
library(gridExtra)

d <- head(iris[,1:3])
# d[2,3] <- "this is very wwwwwide"
# d[1,2] <- "this\nis\ntall"
# colnames(d) <- c("alpha*integral(xdx,a,infinity)", 
#                  "this text\nis high", 'alpha/beta')
a <- tableGrob(d)
grid.newpage()
grid.draw(a)

