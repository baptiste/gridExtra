##' compute vertices of a convex polygon
##'
##' @aliases polygon_regular 
##' @title polygon_regular
##' @param n integer
##' @param ang numeric angle
##' @param rotateFromOrigin logical
##' @return a data.frame
##' @examples
##' polygon2(5)
##' @export
polygon_regular <- function(n=5, ang=0, x=0, y=0, rotateFromOrigin=FALSE){
  ## inspired from a post by William Dunlap on r-help (10/09/09)
  if(n<3) stop("n must be more than 3!")
  
  cc <- exp(seq(0, n)*2i*pi/n)
  if(rotateFromOrigin)
  {
    cc <- (cc + complex(x, y)) * exp(1i*ang)
  } else {
    cc <- cc * exp(1i*ang)  + complex(x, y)
  }
  
  cbind(Re(cc), Im(cc))
}


##' Regular polygon grob
##'
##' @aliases ngonGrob grid.ngon ellipseGrob grid.ellipse
##' @title ngonGrob
##' @param x x unit
##' @param y y unit
##' @param sides sides
##' @param size size
##' @param angle angle
##' @param ar ar
##' @param units.def default units for the positions
##' @param units.size units for the polygon sizes
##' @param gp gpar
##' @return grob
##' @export
##' @family grob userlevel
##' 
##' @examples
#' pushViewport(dataViewport(0:1, 0:1, width=unit(2, "cm"), 
#'                           height=unit(2, "cm")))
#' 
#' xy <- polygon_regular(6)
#' grid.ngon(0.5, 0.5, 6, 10, units.size="mm")
#' for(ii in 1:NROW(xy)){
#'  grid.ngon(xy[ii, 1]+0.5, xy[ii, 2]+0.5, 6, 10, units.size="mm")
#' }
#' upViewport()
ngonGrob <- function (x, y, sides = 5, size = 1,
                      angle = pi/2, ar = 1,
                      gp = gpar(colour = "grey50", fill = "grey90", 
                                alpha=0.5, linejoin = "mitre"),
                      units.def = "native", units.size="mm") 
{
  n <- length(x)
  stopifnot(length(y) == n)
  
  n <- max(n, length(angle), length(sides), length(ar), length(size))
  
  if (length(sides) < n) 
    sides <- rep(sides, length.out = n)
  if (length(size) < n) 
    size <- rep(size, length.out = n)
  if (length(angle) < n) 
    angle <- rep(angle, length.out = n)
  if (length(ar) < n) 
    ar <- rep(ar, length.out = n)
  
  ngonC <- lapply(sides, polygon_regular)
  vertices <- sapply(ngonC, nrow)
  
  for (ii in seq_along(ngonC)){
    ngonC[[ii]]  <- (size[ii] * ngonC[[ii]] %*%
      matrix(c(sqrt(ar[ii]), 0, 0, 1/sqrt(ar[ii])), ncol = 2)) %*%
      matrix(c(cos(angle[ii]), -sin(angle[ii]), 
               sin(angle[ii]), cos(angle[ii])), nrow = 2)
    
  }
  
  ngonXY <- do.call(rbind, ngonC)
  
  repeatx <- unlist(Map(f = rep, x=x, each=vertices))
  repeaty <- unlist(Map(f = rep, x=y, each=vertices))
  
  polygonGrob(x = unit(ngonXY[, 1], units.size) + unit(repeatx, units.def), 
              y = unit(ngonXY[, 2], units.size) + unit(repeaty, units.def), 
              default.units = units.def, id.lengths = unlist(vertices), 
              gp = gp)
}

##' @export
grid.ngon <- function(...)
  {
    grid.draw(ngonGrob(...))
  }

##' @export
ellipseGrob <- function(x, y, size = 1, angle = pi/2,
                        ar = 1, sides = 50,
                        gp = gpar(),
                        units.def="native", units.size="mm") {
  
  ngonGrob(x, y, sides = sides , size = size, angle = angle, ar = ar,
           gp = gp, units.def = units.def, units.size = units.size)
}



##' @export
grid.ellipse <- function(...)
{
  grid.draw(ellipseGrob(...))
}
