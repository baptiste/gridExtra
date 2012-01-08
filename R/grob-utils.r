##' zero grob borrowed from ggplot2
##'
##' @aliases virtualGrob grobHeight.virtual grobWidth.virtual drawDetails.virtual is.zero widthDetails.virtual heightDetails.virtual
##' @title virtualGrob
##' @export
##' @family grob userlevel

virtualGrob <- grob(cl = "virtual", name = "NULL")
##' @export
widthDetails.virtual <-function(x) unit(0, "cm")
##' @export
heightDetails.virtual <- function(x) unit(0, "cm")
##' @export
grobWidth.virtual <- function(x) unit(0, "cm")
##' @export
grobHeight.virtual <- function(x) unit(0, "cm")
##' @export
drawDetails.virtual <- function(x, recording) {}

##' mix two vectors
##'
##' @aliases interleaven
##' @title interleaven
##' @param x vector
##' @param y vector
##' @param n integer  
##' @return a vector
##' @seealso \code{rep}, \code{ggplot2:interleave}
##' @family grob userlevel
##' @export
##' 
##' @examples
##' interleaven(replicate(3, rectGrob(), simplify=FALSE), replicate(12, virtualGrob, simplify=FALSE), 4)

interleaven <- function(x = letters[1:3], y=1:12, n=4){
ord <- as.vector(rbind(seq_along(x), matrix(length(x)+seq_along(y), nrow=n, byrow=FALSE)))
c(x, y)[ord]
 }

##' calculates the max of a list of units arranged in a matrix
##'
##' @aliases rowMax.units colMax.units 
##' @title rowMax.units
##' @param u list of units
##' @param nrow nrow
##' @return a vector of units
##' @export
##' @seealso \code{unit.c}, \code{unit} 

rowMax.units <- function(u, nrow){ # rowMax with a fake matrix of units
  matrix.indices <- matrix(seq_along(u), nrow=nrow)
  do.call(unit.c, lapply(seq(1, nrow), function(ii) {
   max(u[matrix.indices[ii, ]])
  }))
}

##' @export
colMax.units <- function(u, ncol){ # colMax with a fake matrix of units
  matrix.indices <- matrix(seq_along(u), ncol=ncol)
  do.call(unit.c, lapply(seq(1, ncol), function(ii) {
   max(u[matrix.indices[, ii]])
  }))
}


##' expand a list of arguments to full length (and misc. undocumented functions)
##'
##' @title expand.arguments
##' @aliases expand.arguments updatelist textii rectii pchlist
##' @param ... arguments
##' @return ...
expand.arguments <- function(...){
  dotList <- list(...)
  max.length <- max(sapply(dotList, length))
  lapply(dotList, rep, length=max.length)
}
