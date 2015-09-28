library(grid)
library(gridExtra)
df <- data.frame(id = c("a","b","c","d"), s1.pch = c(NA,5,5,5), s1.col = c(NA,"red","green","yellow"), s2.pch = c(3,3,3,3), s2.col = c("blue","red","green","yellow"), s3.pch = c(1,1,NA,1), s3.col = c("blue","red",NA,"yellow"))

d <- data.frame(id=df$id, 
                s1 = paste(df$s1.col, df$s1.pch, sep=","),
                s2 = paste(df$s2.col, df$s2.pch, sep=","),
                s3 = paste(df$s3.col, df$s3.pch, sep=","))


my_fun <- function(label, ...){
  
  s <- strsplit(label, ",")[[1]]
  col <- s[1]
  pch <- ifelse(s[2]=="NA", NA, as.numeric(s[2]))
  
  pointsGrob(0.5,0.5,pch=pch, gp=gpar(col=col, lwd=3, cex=0.5))
}

tt <- ttheme_minimal(12, core=list(fg_fun = my_fun), 
                     rowhead=list(fg_params=list(fontface="bold")))

grid.newpage()
g2 <- grid.table(d[,-1], rows=levels(d[,1]), theme = tt)
