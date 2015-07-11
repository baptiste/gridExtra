library(gridExtra)
library(grid)
r <- rectGrob(gp=gpar(fill="grey90"))
t <- textGrob("text")

## nrow/ncol 
dim(arrangeGrob(r,r,r))
dim(arrangeGrob(r,r,r, nrow=2))
dim(arrangeGrob(r,r,r, ncol=2))
dim(arrangeGrob(r,r,r, ncol=4))
dim(arrangeGrob(r,r,r, nrow=4))
dim(arrangeGrob(r,r,r, nrow=1))
dim(arrangeGrob(r,r,r, ncol=1))
try(arrangeGrob(r,r,r, ncol=1,nrow=1)) # error
dim(arrangeGrob(r,r,r, ncol=2,nrow=2))
dim(arrangeGrob(r,r,r, ncol=3,nrow=4))

## widths/heights
dim(arrangeGrob(r,r,r, widths=1))
dim(arrangeGrob(r,r,r, heights=1))
dim(arrangeGrob(r,r,r, widths=1:3))
dim(arrangeGrob(r,r,r, widths=1:5))
dim(arrangeGrob(r,r,r, heights=1:3))
dim(arrangeGrob(r,r,r, heights=1:5))
dim(arrangeGrob(r,r,r, widths=1:5))
dim(arrangeGrob(r,r,r, widths=1:5, heights=1:5))
try(arrangeGrob(r,r,r, widths=1, heights=1)) # error

dim(arrangeGrob(r,r,r, nrow=2, widths=1:3))
dim(arrangeGrob(r,r,r, ncol=2, heights=1:3))

try(arrangeGrob(r,r,r, ncol=2, widths=1:3))# error
try(arrangeGrob(r,r,r, nrow=2, heights=1:3))# error







library(ggplot2)
library(lattice)
p <- qplot(1,1)
p2 <- xyplot(1~1)

grid.arrange(p,p2,p,p2)
grid.arrange(p,p2)

grid.arrange(r,r, widths=1:2, ncol=2)

grid.arrange(r,r,r,r,ncol=3,nrow=3)
grid.arrange(r,r,r,r,ncol=3,nrow=3,as.table=FALSE)

lay <- matrix(c(1,2,3,3), ncol=2)
grid.arrange(r,r,r, layout_matrix = lay)

a <- marrangeGrob(list(r,r,r), 1, 1)
a
ggsave("test.pdf", a)

