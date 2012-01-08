##' pattern grob
##' @aliases patternGrob grid.pattern widthDetails.pattern heightDetails.pattern drawDetails.pattern segments.pattern
##' @title patternGrob
##' @param x x unit
##' @param y y unit
##' @param width width
##' @param height height 
##' @param pattern integer
##' @param orientation orientation 
##' @param granularity unimplemented 
##' @param motif.col motif.col 
##' @param motif.fill motif.fill 
##' @param motif.alpha motif.alpha 
##' @param motif.cex motif.cex 
##' @param pattern.offset pattern.offset 
##' @param default.units default.units 
##' @param clip  clip  
##' @param gp gp 
##' @param ... additional params to the grob
##' @return grob of class pattern
##' @export
##' @family grob userlevel
##' 
##' @examples
##' grid.pattern(x=seq(1/6, 5/6, length=6), width=unit(1/8,"npc"), height=unit(0.5,"npc"),
##'             motif.width=unit(10, "mm"),  pattern=c(1:6), orientation=45, motif.alpha=0.5,
##'             motif.cex=c(1, 0.5), motif.col=1:2, motif.fill=NA,
##'             gp=gpar(fill="blue", lwd=2, alpha=0.5),  clip=TRUE)

patternGrob <- function(x=unit(0.5, "npc"), y=unit(0.5, "npc"),
                        width=unit(1, "npc"), height=unit(1, "npc"), 
                        pattern=2,
                        orientation=45, 
                        granularity=unit(5, "mm"), 
                        motif.col="black", 
                        motif.fill= NULL, 
                        motif.alpha=1, 
                        motif.cex=1, 
                        pattern.offset=c(0, 0), 
                        default.units="npc",
                        clip=TRUE,
                        gp=gpar(fill=NA), ...
                        ){
    new <- expand.arguments(x=x, y=y, width=width, height=height,
                            motif.col=motif.col, motif.fill=motif.fill,
                            motif.alpha=motif.alpha, motif.cex=motif.cex,
                            pattern=pattern, orientation=orientation, granularity=granularity)
   
    with(new,
         grob(x=x, y=y, width=width, height=height,
              motif.col=motif.col, motif.fill=motif.fill,
              motif.alpha=motif.alpha, motif.cex=motif.cex,
              pattern=pattern, orientation=orientation, granularity=granularity, 
              pattern.offset=pattern.offset, clip=clip,
              gp=gp,default.units=default.units, ..., cl="pattern"))
    
  }

##' @export
widthDetails.pattern <- function(x) x$width
##' @export
heightDetails.pattern <- function(x) x$height


pchlist <- c(NA, 21, NA, 17, NA, 3)


segments.pattern <- function(width, height, 
                             motif.size,
                             pattern.offset, angle){
  
     max.length <- sqrt(width^2 + height^2)
     n <- ceiling(max.length / motif.size) + 2
     
     y0 <- y1 <- seq(-n/2*motif.size, n/2*motif.size, by=motif.size)
     x0 <- -n/2*motif.size
     x1 <- n/2*motif.size
     
     angler <- angle*pi/180
     
     rotation <- 
       matrix(c(cos(angler), sin(angler), -sin(angler), cos(angler)), ncol=2, byrow=TRUE)
     
     coords <- cbind(cbind(x0, y0) %*% rotation, cbind(x1, y1) %*% rotation)
     
     params <- list(x0=unit(coords[, 1] + width/2  + pattern.offset[1], "mm"),
                    y0=unit(coords[, 2] + height/2 + pattern.offset[2], "mm"), 
                    x1=unit(coords[, 3] + width/2  + pattern.offset[1], "mm"), 
                    y1=unit(coords[, 4] + height/2 + pattern.offset[2], "mm"),
                    default.units="mm")

}



##' @export
drawDetails.pattern <- function(x, recording=TRUE){
  
  ##   calculate the number of tiles
  
  abs.size <- list(width=convertUnit(x$width, "mm", valueOnly=TRUE),
                   height=convertUnit(x$height, "mm", axisFrom = "y",  valueOnly=TRUE),
                   motif.size=convertUnit(x$granularity, "mm", valueOnly=TRUE))
  
  abs.size$pattern.offset <- with(abs.size, rep(x$pattern.offset*motif.size, 2))
    
  nx <- with(abs.size, ceiling(width / motif.size) + 1) 
  ny <- with(abs.size, ceiling(height / motif.size) + 1)

  drawOne <- function(ii){
    
  ##   clip the pattern
  pushViewport(viewport(x$x[ii], x$y[ii],
                        width=x$width[ii], height=x$height[ii],
                        clip=x$clip))
  
  if(x$pattern[ii] == 1){ # draw solid lines
     
    do.call(grid.segments,
             c(segments.pattern(abs.size$width[ii], abs.size$height[ii], 
                                abs.size$motif.size[ii],
                                abs.size$pattern.offset, x$orientation[ii]),
               list(gp=gpar(lty=1))))
     
   }
    if(x$pattern[ii] == 3){ # draw grid lines
      
    do.call(grid.segments,
             c(segments.pattern(abs.size$width[ii], abs.size$height[ii], 
                                abs.size$motif.size[ii],
                                abs.size$pattern.offset, x$orientation[ii]),
               list(gp=gpar(lty=1, lex=x$motif.cex[ii]))))
    
    do.call(grid.segments,
            c(segments.pattern(abs.size$width[ii], abs.size$height[ii], 
                               abs.size$motif.size[ii],
                               abs.size$pattern.offset, -x$orientation[ii]),
              list(gp=gpar(lty=1, lex=x$motif.cex[ii]))))
     
   }
    if(x$pattern[ii] == 5){ # draw dashed lines
     
    do.call(grid.segments,
             c(segments.pattern(abs.size$width[ii], abs.size$height[ii], 
                                abs.size$motif.size[ii],
                                abs.size$pattern.offset, x$orientation[ii]),
               list(gp=gpar(lty=2, lex=x$motif.cex[ii]))))
     
   }
  
  if(x$pattern[ii] %in% c(2, 4, 6)){ # draw points

    xy <- expand.grid(x=seq(-nx[ii]/2*abs.size$motif.size[ii],
                        nx[ii]/2*abs.size$motif.size[ii], by=abs.size$motif.size[ii]) ,
                      y=seq(-ny[ii]/2*abs.size$motif.size[ii],
                        ny[ii]/2*abs.size$motif.size[ii], by=abs.size$motif.size[ii]) )
  
     params <- c(list(x=unit(xy$x+abs.size$width[ii]/2 +
                        abs.size$pattern.offset[1], "mm")),
                 list(y=unit(xy$y+abs.size$height[ii]/2+
                        abs.size$pattern.offset[2], "mm")),
                 list(gp=gpar(col=x$motif.col[ii], fill=x$motif.fill[ii],
                   alpha=x$motif.alpha[ii], cex=x$motif.cex[ii])), list(pch=pchlist[x$pattern[ii]]), 
                 default.units="mm")

     do.call(grid.points, params)
   }
  
  upViewport()
  }
  
  grid.rect(x=x$x, y=x$y,
            width=x$width, height=x$height,
            just="center", gp=x$gp)

  ##   overlay the pattern
  be.quiet <- lapply(seq_along(x$x), drawOne)
  
}


##' @export
grid.pattern <- function(...)
  grid.draw(patternGrob(...))

