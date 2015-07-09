library(gridExtra)
library(grid)
r <- rectGrob(gp=gpar(fill="grey90"))
t <- textGrob("text")
grid.arrange(t, t, r, ncol=2, as.table=FALSE)

library(ggplot2)
library(lattice)
p <- qplot(1,1)
p2 <- xyplot(1~1)

grid.arrange(p,p2,p,p2)
grid.arrange(p,p2)

grid.arrange(r,r,r,r,ncol=3,nrow=3)
grid.arrange(r,r,r,r,ncol=3,nrow=3,as.table=FALSE)

lay <- matrix(c(1,2,3,3), ncol=2)
grid.arrange(r,r,r, layout_matrix = lay)

a <- marrangeGrob(list(r,r,r), 1, 1)
a
ggsave("test.pdf", a)

