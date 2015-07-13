library(gridExtra)
library(grid)

d <- head(iris[,1:3])
d[2,3] <- "this is very wwwwwide"
d[1,2] <- "this\nis\ntall"
colnames(d) <- c("alpha*integral(xdx,a,infinity)", 
                 "this text\nis high", 'alpha/beta')

tt1 <- ttheme_default(colhead=list(fg_params=list(fontface="italic")))
tt2 <- ttheme_minimal()
tt3 <- ttheme_minimal(core=list(bg_params = list(fill = blues9, 
                                                 col=NA)), 
                      colhead=list(fg_params=list(col="navyblue")))
grid.arrange(
  tableGrob(iris[1:4, 1:2], theme=tt1),
  tableGrob(iris[1:4, 1:2], theme=tt2),
  tableGrob(iris[1:4, 1:2], theme=tt3),
  nrow=1)

