
insert.unit <- function (x, values, after = length(x)) {
  lengx <- length(x)
  if (lengx == 0) return(values)
  if (length(values) == 0) return(x)
  
  if (after <= 0) {
    unit.c(values, x)
  } else if (after >= lengx) {
    unit.c(x, values)
  } else {
    unit.c(x[1L:after], values, x[(after + 1L):lengx])
  }
}

z_normalise <- function (x, i = 1) 
{
  x$layout$z <- rank(x$layout$z, ties.method = "first") + i - 
    1
  x
}

z_arrange_gtables <- function (gtables, z) 
{
  if (length(gtables) != length(z)) {
    stop("'gtables' and 'z' must be the same length")
  }
  zmax <- 0
  for (i in order(z)) {
    if (nrow(gtables[[i]]$layout) > 0) {
      gtables[[i]] <- z_normalise(gtables[[i]], zmax + 
                                    1)
      zmax <- max(gtables[[i]]$layout$z)
    }
  }
  gtables
}

rbind.gtable <- function(..., size = "max", z = NULL) {
  gtables <- list(...)
  if (!is.null(z)) {
    gtables <- z_arrange_gtables(gtables, z)
  }
  Reduce(function(x, y) rbind_gtable(x, y, size = size), gtables)
}

rbind_gtable <- function(x, y, size = "max") {
  stopifnot(ncol(x) == ncol(y))
  if (nrow(x) == 0) return(y)
  if (nrow(y) == 0) return(x)
  
  y$layout$t <- y$layout$t + nrow(x)
  y$layout$b <- y$layout$b + nrow(x)
  x$layout <- rbind(x$layout, y$layout)
  
  x$heights <- insert.unit(x$heights, y$heights)
  x$rownames <- c(x$rownames, y$rownames)
  
  size <- match.arg(size, c("first", "last", 
                            "max", "min"))
  x$widths <- switch(size,
                     first = x$widths,
                     last = y$widths,
                     min = unit.pmin(x$widths, y$widths),
                     max = unit.pmax(x$widths, y$widths)
  )
  
  x$grobs <- append(x$grobs, y$grobs)
  
  x
}

cbind.gtable <- function(..., size = "max", z = NULL) {
  gtables <- list(...)
  if (!is.null(z)) {
    gtables <- z_arrange_gtables(gtables, z)
  }
  Reduce(function(x, y) cbind_gtable(x, y, size = size), gtables)
}

cbind_gtable <- function(x, y, size = "max") {
  stopifnot(nrow(x) == nrow(y))
  if (ncol(x) == 0) return(y)
  if (ncol(y) == 0) return(x)
  
  y$layout$l <- y$layout$l + ncol(x)
  y$layout$r <- y$layout$r + ncol(x)
  x$layout <- rbind(x$layout, y$layout)
  
  x$widths <- insert.unit(x$widths, y$widths)
  x$colnames <- c(x$colnames, y$colnames)
  
  size <- match.arg(size, c("first", "last", 
                            "max", "min"))
  
  x$heights <- switch(size,
                      first = x$heights,
                      last = y$heights,
                      min = unit.pmin(x$heights, y$heights),
                      max = unit.pmax(x$heights, y$heights))
  
  x$grobs <- append(x$grobs, y$grobs)
  
  x
}



#'  Join two gtables together based on row/column names.
#'
#'  @inheritParams gtable_align
#' @export
#'  @param along dimension to align along, \code{1} = rows,
#'   \code{2} = cols. Join will occur perpendicular to this direction.
#'  @examples
#'  rect <- rectGrob(gp = gpar(fill = "black"))
#'  circ <- circleGrob(gp = gpar(fill = "red"))
#'  a <- gtable_col("a", list(rect, circ), width = unit(5, "cm"))
#'  rownames(a) <- c("top", "mid")
#'  b <- gtable_col("b", list(circ, rect), width = unit(5, "cm"))
#'  rownames(b) <- c("mid", "bot")
gtable_join <- function(x, y, along = 1L, join = "left") {
  aligned <- gtable_align(x, y, along = along, join = join)
  switch(along,
         gridExtra:::cbind.gtable(aligned$x, aligned$y, 
                                  size="max"), 
         gridExtra:::rbind.gtable(aligned$x, aligned$y, 
                                  size="max"),
         stop("along > 2 no implemented"))
}

#'  Align two gtables based on their row/col names.
#'
#' @export
#'  @param x \code{\link{gtable}}
#'  @param y \code{\link{gtable}}
#'  @param along dimension to align along, \code{1} = rows, \code{2} =' cols.
#'  @param join when x and y have different names, how should the d'ifference be resolved? 
#'  \code{inner} keep names that appear in both, 
#'  \code{outer} keep names that appear in either, 
#'  \code{left} keep names from \code{x}, 
#'  and \code{right} keep names from \code{y}.
#'  @seealso \code{\link{gtable_join}} to return the two gtables
#'   combined into a single gtable.
#'  @return a list with elements \code{x} and \code{y} 
#'  corresponding to the input gtables with extra rows/columns so that they now align.
gtable_align <- function(x, y, along = 1L, join = "outer") {
  join <- match.arg(join, c("left", "right", "inner", "outer"))
  
  names_x <- dimnames(x)[[along]]
  names_y <- dimnames(y)[[along]]
  
  if (is.null(names_x) || is.null(names_y)) {
    stop("Both gtables must have names along dimension to be aligned")
  }
  
  idx <- switch(join,
                left = names_x,
                right = names_y, 
                inner = intersect(names_x, names_y),
                outer = union(names_x, names_y)
  )
  
  list(
    x = gtable_reindex(x, idx, along), 
    y = gtable_reindex(y, idx, along)
  )
}

#  Reindex a gtable.
#
#  @keywords internal
#  @examples
#  gt <- gtable(heights = unit(rep(1, 3), "cm"), rownames = c("a", "b", "c"))
#  rownames(gtable:::gtable_reindex(gt, c("a", "b", "c")))
#  rownames(gtable:::gtable_reindex(gt, c("a", "b")))
#  rownames(gtable:::gtable_reindex(gt, c("a")))
#  rownames(gtable:::gtable_reindex(gt, c("a", "d", "e")))
gtable_reindex <- function(x, index, along = 1L) {
  stopifnot(is.character(index))
  if (length(dim(x)) > 2L || along > 2L) {
    stop("reindex only supports 2d objects")
  }
  old_index <- switch(along, rownames(x), colnames(x))
  stopifnot(!is.null(old_index))
  
  if (identical(index, old_index)) {
    return(x)
  }
  
  if (!(old_index %contains% index)) {
    missing <- setdiff(index, old_index)
    # Create and add dummy space rows
    
    if (along == 1L) {
      spacer <- gtable(
        widths = unit(rep(0, ncol(x)), "cm"), 
        heights = rep_along(unit(0, "cm"), missing),
        rownames = missing)
      x <- rbind(x, spacer, size = "first")
    } else if (along == 2L){
      spacer <- gtable(
        heights = unit(rep(0, nrow(x)), "cm"), 
        widths = rep_along(unit(0, "cm"), missing),
        colnames = missing)
      
      x <- cbind(x, spacer, size = "first")
    }
  }
  
  
  # Reorder & subset
  
  switch(along, 
         x[index, ],
         x[, index])
}

"%contains%" <- function(x, y) all(y %in% x)

rep_along <- function(x, y) {
  if (length(y) == 0) return(NULL)
  rep(x, length(y))
}
