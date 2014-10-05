#' @export
latticeGrob <- function(p, ...){
  grob(p=p, ..., cl="lattice")
}

#' @export
drawDetails.lattice <- function(x, recording=FALSE){
  stopifnot(requireNamespace("lattice", quietly = TRUE)) 
  plot(x$p, newpage=FALSE)
}
