library(grid)
library(gridExtra)
my_fun <- function(label, ...){
  x <- seq(0,1, length=20)
  y <- if(is.na(as.numeric(label)))
    do.call("sin", list(x=2*pi*x)) else 
      do.call("cos", list(x=2*pi*x)) 
  grobTree(grid.points(x, y/2+0.5, gp=gpar(cex=0.1)), 
           cl="cell")
}
widthDetails.cell <- function(x)
  unit(2,"lines")
heightDetails.cell <- function(x)
  unit(1,"lines")

d <- head(iris)
grid.newpage()
g2 <- grid.table(d, theme = ttheme_default(12),
                rows=NULL, cols=gsub("\\.", "\\\n",names(iris)))
