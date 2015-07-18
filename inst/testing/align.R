library(gridExtra)
library(grid)

d1 <- iris[1:5,1:2]
d2 <- iris[1:2,1:3]

g1 <- tableGrob(d1)
g2 <- tableGrob(d2)
grid.newpage()
grid.arrange(g1,g2,ncol=2)

grid.newpage()
grid.draw(gtable_join(g1,g2, along=1))

grid.newpage()
grid.draw(gtable_join(g1,g2, along=2))
