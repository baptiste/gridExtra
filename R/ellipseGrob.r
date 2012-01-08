##' an ellipse grob
##'
##' @aliases ellipseGrob grid.ellipse
##' @title ellipseGrob
##' @param x x unit
##' @param y y unit
##' @param size size
##' @param angle angle
##' @param ar aspec ratio
##' @param gp gpar
##' @param default.units default units
##' @param size.units size units
##' @return grob
##' @export
##' @family grob userlevel
##' 
##' @examples
##' g = ellipseGrob(1:10/11,1:10/11,size=5,ar=1:5,angle=rnorm(10),
##'                 def="npc", gp=gpar(fill=grey(1:10/11)))
##' grid.draw(g)

ellipseGrob <- function(x, y, size = 1, angle=rep(pi/2, length(x)),
                        ar =1,
                        gp=gpar(colour = "grey50", fill = "grey90"),
                        default.units="native", size.units="mm") {
							
  stopifnot(length(y) == length(x))
  
  n <- length(x)
  size <- size / 2 # polygon.regular has radius unity
  
  if(length(size)  < n ) size  <- rep(size,  length.out=n) 
  if(length(ar)  < n ) ar  <- rep(ar,  length.out=n) 
  if(length(angle)  < n ) angle  <- rep(angle,  length.out=n) 
  
  ngonC <- polygon.regular(50) # seems enough for a smooth curve
  ngonC <- lapply(seq_along(x), function(ii) ngonC)
  
##                                         stretch the polygons, then rotate them
##                                         aspect ratio factor for constant area
  ngonC.list <- 
    lapply(seq_along(ngonC), function(ii) 
           size[ii] * ngonC[[ii]] %*%
           matrix(c(sqrt(ar[ii]), 0, 0, 1/sqrt(ar[ii])), ncol=2) %*%
           matrix(c(cos(angle[ii]), -sin(angle[ii]),
                    sin(angle[ii]), cos(angle[ii])), nrow = 2)
           )
  
  vertices <- sapply(ngonC.list, nrow)
  reps.x <- do.call(c, lapply(seq_along(x), function(ii) rep(x[ii], vertices[ii])))
  reps.y <- do.call(c, lapply(seq_along(y), function(ii) rep(y[ii], vertices[ii])))
  
  ngonXY <- do.call(rbind, ngonC.list)
  
 polygonGrob(
             x = unit(ngonXY[, 1], size.units) + unit(reps.x, default.units),
             y = unit(ngonXY[, 2], size.units) + unit(reps.y, default.units),
             default.units = default.units,
             id.lengths = unlist(vertices), gp = gp)
}



##' @export
grid.ellipse <- function(...)
  {
    grid.draw(ellipseGrob(...))
  }
