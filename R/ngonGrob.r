##' regular polygon grob
##'
##' @aliases ngonGrob grid.ngon
##' @title ngonGrob
##' @param x x unit
##' @param y y unit
##' @param sides sides
##' @param size size
##' @param angle angle
##' @param ar ar
##' @param units.def units.def
##' @param units.size units.size
##' @param gp gpar
##' @return grob
##' @include polygon.regular.r
##' @export
##' @family grob userlevel
##' 
##' @examples
#' pushViewport(dataViewport(0:1, 0:1, width=unit(2, "cm"), height=unit(2, "cm")))
#' 
#' xy <- polygon.regular(6, TRUE)
#' grid.ngon(0.5, 0.5, 6, 10, units.size="mm")
#' for(ii in 1:NROW(xy)){
#'  grid.ngon(xy[ii, 1]+0.5, xy[ii, 2]+0.5, 6, 10, units.size="mm")
#' }
#' upViewport()


ngonGrob <- function (x, y, sides = 5, size = 1,
                      angle = rep(pi/2, length(x)), 
                      ar = rep(1, length(x)),
                      gp = gpar(colour = "grey50", fill = "grey90", 
                        linejoin = "mitre"),
                      units.def = "native", units.size="mm") 
{
  stopifnot(length(y) == length(x))
  n <- length(x)
  if (length(size) < n) 
    size <- rep(size, length.out = n)
  if (length(sides) < n) 
    sides <- rep(sides, length.out = n)
  ngonC <- lapply(sides, polygon.regular)
  ngonC.list <- lapply(seq_along(ngonC), function(ii) size[ii] * 
                       ngonC[[ii]] %*%
                       matrix(c(sqrt(ar[ii]), 0, 0, 1/sqrt(ar[ii])), ncol = 2) %*%
                       matrix(c(cos(angle[ii]), -sin(angle[ii]), 
                                sin(angle[ii]), cos(angle[ii])), nrow = 2))
  vertices <- sapply(ngonC.list, nrow)
  reps.x <- do.call(c, lapply(seq_along(x),
                              function(ii) rep(x[ii], vertices[ii])))
  reps.y <- do.call(c, lapply(seq_along(y),
                              function(ii) rep(y[ii], vertices[ii])))
  ngonXY <- do.call(rbind, ngonC.list)
  
  polygonGrob(x = unit(ngonXY[, 1], units.size) + unit(reps.x, units.def), 
              y = unit(ngonXY[, 2], units.size) + unit(reps.y, units.def), 
              default.units = units.def, id.lengths = unlist(vertices), 
              gp = gp)
}

##' @export
grid.ngon <- function(...)
  {
    grid.draw(ngonGrob(...))
  }
