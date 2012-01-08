##' an open rectangular borderdraw
##'
##' @aliases borderGrob grid.border
##' @title borderGrob
##' @param type which borders to draw
##' @param colour  colour
##' @param ...  additional arguments passed to gpar()
##' @param vp viewport
##' @return a grob
##' @seealso \code{grid.segments}, \code{grid.points}
##' @family grob userlevel
##' @export
##' 
##' @examples
##' pushViewport(viewport(width=0.5, height=0.5, layout=grid.layout(4, 4, w=0.9, height=0.9)))
##' vp = viewport(width=0.9, height=0.9)
##' type <- 1
##' for(ii in 1:4){
##'  for(jj in 1:4){
##'   pushViewport(viewport(layout.pos.r=ii, layout.pos.c=jj))
##'   grid.rect(gp=gpar(col="grey",fill="black"))
##'   grid.text(paste("t = ", type), gp=gpar(col="white"))
##'   grid.border(type, vp=vp)
##'   upViewport()
##'   type <- type + 1
##'  }
##' }
 
 
borderGrob <- function(type=1, colour="white", vp=NULL, ...){
 
  xs <- c(0, 1, 1, 0)
  xe <- c(1, 1, 0, 0)
  ys <- c(0, 0, 1, 1)
  ye <- c(0, 1, 1, 0)
 
 cols <- as.matrix(do.call(expand.grid, rep(list(c(NA,colour)), 4)))[c(1,2,3,5,9,4,7,13,10,6,11,8,15,14,12,16), ]
  
segmentsGrob(xs, ys, xe, ye, gp=gpar(col=cols[type, ], ...), vp=vp)
  
}

##' @export
grid.border <- function(...){
  grid.draw(borderGrob(...))
}

