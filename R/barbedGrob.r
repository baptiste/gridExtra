##' plot lines and symbols
##'
##' @aliases barbedGrob grid.barbed
##' @title barbedGrob
##' @param x coordinates
##' @param y coordinates
##' @param size unit vector for the symbols
##' @param pch vector of symbol types
##' @param space numeric scaling factor for the exclusion zone
##' @param only.lines logical: should only split lines be returned?
##' @param arrow arrow passed to grid.segments
##' @param gp gpar() object for the symbols
##' @param name grob name
##' @param default.units default units
##' @param vp viewport
##' @return a grob
##' @export
##' @seealso \code{grid.segments}, \code{grid.points}
##' 
##' @family grob userlevel
##' @examples
##' set.seed(1234)
##' grid.barbed(name="test")
##' grid.edit("test", gp=gpar(fill="blue", lwd=3))
##' grid.edit("test::points", pch=22)
##' grid.newpage()
##' g <- 
##' barbedGrob(size=unit(1:5, "char"), only=FALSE, 
##' 	gp=gpar(col="red", lex=3, fill="blue", alpha=0.5, pch=3))
##' 
##' pushViewport(vp=viewport(width=1, height=1))
##' grid.rect(gp=gpar(fill="thistle2"))
##' grid.grill(gp=gpar(col="lavenderblush1", lwd=3, lty=3))
##' grid.draw(g)
##' x <- c(0.2, 0.7)
##' y <- x
##' dev.new(width=3, height=7) 
##' grid.newpage()
##' g <- 
##' barbedGrob(x, y, size=unit(c(2, 10), "mm"))
##' pushViewport(vp=viewport(width=1, height=1))
##' grid.draw(g)
##' grid.points(x, y, pch=3)

barbedGrob <- function(x = stats::runif(10), y = stats::runif(10), 
                       size = unit(sample(1:4, 10, replace=TRUE), "char"), 
                       pch = 21, arrow=NULL,
                       space=1, only.lines=FALSE, 
                       gp = gpar(), 
                       name=NULL, default.units = "npc", vp = NULL){


  n <- length(x)
  
  if(n > 1){ # there is more than one point: we can draw segments
  if(length(size) < n) size <- rep(size, length=n)
  
  dx <- diff(x)
  dy <- diff(y)
  
  ## duplicate the points to make split segments
  new.x <- rep(x, each=2)[-c(1, 2*length(x))]
  new.y <- rep(y, each=2)[-c(1, 2*length(y))]
  sizex <- convertUnit(size, default.units, 'x', "dimension",  valueOnly=TRUE)
  sizey <- convertUnit(size, default.units, 'y', "dimension",  valueOnly=TRUE)
  
  new.sizex <- rep(sizex, each=2, length=2*n)[-c(1, 2*n)]
  new.sizey <- rep(sizey, each=2, length=2*n)[-c(1, 2*n)]
  
  ## strip units before rep (bug in [.unit)

  length <- sqrt(dx^2 + dy^2) # length of initial segments
  exclusionx <- 0.5 * rep(space, length(new.sizex)) * new.sizex
  exclusiony <- 0.5 * rep(space, length(new.sizey)) * new.sizey
  
  length.exc <- sqrt(exclusionx^2 + exclusiony^2)

  scaling <- length.exc / rep(length, each=2) # exclusion factor around each point
  
  start <- seq(1, by=2, length(new.x)) # starting points
  end <- seq(2, by=2, length(new.x)) # end points
  
  x.start <- scaling[start] * dx[(start+1)/2] + new.x[start] # shift the points 
  y.start <- scaling[start] * dy[(start+1)/2] + new.y[start] # keeping the direction of the initial segments
  
  x.end <- new.x[end] - scaling[end] * dx[end/2]
  y.end <- new.y[end] - scaling[end] * dy[end/2]
  
	
  grob.lines <- segmentsGrob(x0 = x.start, y0 = y.start,
                             x1 = x.end, y1=y.end, arrow=arrow,
                             default.units=default.units,
                             gp = gpar(lineend = "butt"), name = "lines")
  
} else {
  grob.lines <- NULL
}

if(!only.lines){
  grob.points <- pointsGrob(x, y, size=size, 
                            default.units=default.units, pch=pch, 
                            gp = gpar(lty=1, linejoin = "mitre"),
                            name = "points")
}else{ # no points
  grob.points <- NULL
}

  children <- gList(grob.lines, grob.points)
  
gTree(x = x, y = y, size = size, 
      pch = pch, 
      space=space, only.lines=only.lines, 
      name=name, default.units = default.units,
      vp = vp, gp=gp, children = children,
      cl = 'barbed')

}

##' @export
grid.barbed <- function(...){
  g = barbedGrob(...)
  grid.draw(g)
  invisible(g)
}

