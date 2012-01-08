##' compute vertices of a convex polygon
##'
##' @aliases polygon1 polygon2
##' @title polygon1
##' @param n integer
##' @param ang numeric angle
##' @param ... unused
##' @return a data.frame
##' @examples
##' polygon2(5)

polygon1 <- function(n=5, ang=0,...) { # inspired from a post by Greg Snow on r-help (11/09/09)
               theta <- seq(ang, length.out=n+1, by=2*pi/n)
               cbind( cumsum(cos(theta)/2), cumsum(sin(theta)/2) )
}

##' @export
polygon2 <- function(n=5, ang=0, x=0, y=0, rotateFromOrigin=FALSE){
                     # inspired from a post by William Dunlap on r-help (10/09/09)
if(n<3) stop("n must be more than 3!")
#if(n>100) warning("n is limited to 100")

  cc <- exp(seq(0, n)*2i*pi/n)
if(rotateFromOrigin)
  {
    cc <- (cc + complex(x, y)) * exp(1i*ang)
  } else {
     cc <- cc * exp(1i*ang)  + complex(x, y)
  }

  cbind(Re(cc), Im(cc))
}




##' compute vertices of a starred polygon
##'
##' @aliases polygon.star
##' @title polygon.star
##' @param n int
##' @param adj numeric angle
##' @param r radius
##' @return a data.frame
##' @export
##' @examples
##' polygon.star(5)

polygon.star <- function(n=4, adj=pi/2, r=1){

	    if (n == 1) {
	        return(rbind(c(0, 0), c(cos(adj), sin(adj)) * r))
	    }
	    if (n == 2) {
	        return(rbind(c(cos(adj), sin(adj)), c(cos(adj + pi), 
	            sin(adj + pi))) * r)
	    }
	    if (n == 3) {
	        return(rbind(c(0, 0), c(cos(adj), sin(adj)), NA, c(0, 
	            0), c(cos(adj + 2 * pi/3), sin(adj + 2 * pi/3)), 
	            NA, c(0, 0), c(cos(adj + 4 * pi/3), sin(adj + 4 * 
	                pi/3))) * r)
	    }
	    if (n == 4) {
	        return(rbind(c(cos(adj), sin(adj)), c(cos(adj + pi), 
	            sin(adj + pi)), NA, c(cos(adj + pi/2), sin(adj + 
	            pi/2)), c(cos(adj + 3 * pi/2), sin(adj + 3 * pi/2))) * 
	            r)
	    }
	    if (n == 6) {
	        tmp <- c(0, 2 * pi/3, 4 * pi/3, 2 * pi)
	        tmp <- c(tmp, NA, tmp + pi/3) + adj
	        return(cbind(cos(tmp), sin(tmp)) * r)
	    }
	    skp <- floor(n/2 - 0.1)
	    tmp <- seq(0, skp * 2 * pi, length.out = n + 1) + adj
	    tmp2 <- cbind(cos(tmp), sin(tmp)) * r
	    while (any(duplicated(round(tmp2[-1, ], 5)))) {
	        skp <- skp - 1
	        tmp <- seq(0, skp * 2 * pi, length.out = n + 1) + adj
	        tmp2 <- cbind(cos(tmp), sin(tmp)) * r
	    }
	    return(tmp2)

}


#' compute vertices of a polygon
#'
#' @aliases polygon.regular
#' @title polygon.regular
#' @param sides int
#' @param scale.area logical
#' @param star logical
#' @return a data.frame
#' @seealso \code{star}
#' @references ngon from the 'maptree' package
##' @export
#' @examples
#' polygon.regular(5)

polygon.regular <- function (sides=4, scale.area=TRUE, star=FALSE) { 

n <- sides # lazy to replace
if (n<3) n <- 3 
if (n > 8) n <- 50
# if (n > 8 & star) n <- 8

if(!star){ # convex polygon
  
xy <- polygon2(n)
 if(scale.area) {
	Area = n/2 * 1^2 * sin(2*pi / n)
	xy <- xy / sqrt(Area)
 }

} else { # starred version
xy <- polygon.star(n=sides)
if(scale.area) {
	# unimplemented
  .NotYetImplemented()
}

}
return(xy)
} 

