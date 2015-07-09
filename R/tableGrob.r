#' Graphical display of a textual table.
#'
#' @param d data.frame or matrix
#' @param widths optional vector to specify column widths
#' @param heights optional vector to specify row heights
#' @param fg.par control parameters for text grobs
#' @param bg.par control parameters for rect grobs
#' @param padding unit of length 2
#' @importFrom plyr mlply
#' @export
#' @examples
#' \donttest{
#' d <- head(iris, 3)
#' g <- tableGrob(d)
#' grid.newpage()
#' grid.draw(g)
#' }
tableGrob <- function(d, rows=rownames(d), cols=colnames(d), 
                      theme = ttheme_default(),
                      ...){
  
  g <- gtable_table(d, 
                    fg.par = theme$core$fg.par, 
                    bg.par = theme$core$bg.par, 
                    parse=theme$core$parse, 
                    padding=theme$core$padding)
  
  if(!is.null(cols)){
    gc <- gtable_table(t(cols), 
                       fg.par = theme$colhead$fg.par, 
                       bg.par = theme$colhead$bg.par, 
                       parse=theme$colhead$parse, 
                       padding=theme$colhead$padding)
    g <- rbind_gtable(gc, g)
  }
  if(!is.null(rows)){
    if(!is.null(cols)) # need to add dummy cell
      rows <- c("", rows)
    gr <- gtable_table(rows, 
                       fg.par = theme$rowhead$fg.par, 
                       bg.par = theme$rowhead$bg.par, 
                       parse=theme$rowhead$parse, 
                       padding=theme$rowhead$padding)
    g <- cbind_gtable(gr, g)
  }
  
  g
}


#' @import grid 
#' @export
grid.table <- function(...)
  grid.draw(tableGrob(...))



##' @export
ttheme_default <- function(...){
  
  core <- list(bg.par = list(fill = c("grey95","grey90"), lwd=1.5, col="white"),
               fg.par = list(col="black"),
               parse = FALSE, padding = unit(c(4, 4), "mm"))
  
  colhead <- list(bg.par = list(fill = c("grey80"), lwd=1.5, col="white"),
               fg.par = list(fontface="bold"),
               parse = FALSE, padding = unit(c(4, 6), "mm"))
  
  rowhead <- list(bg.par = list(fill = NA, col=NA),
                  fg.par = list(fontface="italic"),
                  parse = FALSE, padding = unit(c(4, 4), "mm"))
  
  default <- list(
    core = core,
    colhead = colhead,
    rowhead= rowhead
    )
  
  modifyList(default, list(...))
  
}


##' @export
ttheme_minimal <- function(...){
  
  core <- list(bg.par = list(fill = NA, col=NA),
               fg.par = list(col="black"),
               parse = FALSE, padding = unit(c(4, 4), "mm"))
  
  colhead <- list(bg.par = list(fill = NA, lwd=1.5, col=NA),
                  fg.par = list(fontface="bold"),
                  parse = FALSE, padding = unit(c(4, 6), "mm"))
  
  rowhead <- list(bg.par = list(fill = NA, col=NA),
                  fg.par = list(fontface="italic"),
                  parse = FALSE, padding = unit(c(4, 4), "mm"))
  
  default <- list(
    core = core,
    colhead = colhead,
    rowhead= rowhead
  )
  
  modifyList(default, list(...))
  
}


## unexported helper functions

gtable_table <- function(d, widths, heights,
                         fg.par = list(col = "black"),
                         bg.par = list(fill = "grey98", col = NA),
                         padding = unit(c(4, 4), "mm"), parse = FALSE,
                         name = "table", vp = NULL){
  
  label_matrix <- as.matrix(d)
  
  nc <- ncol(label_matrix)
  nr <- nrow(label_matrix)
  n <- nc*nr
  
  fg.par <- lapply(fg.par, rep, length.out = n, each = nc)
  bg.par <- lapply(bg.par, rep, length.out = n, each = nc)
  
  fg.param <- data.frame(fg.par, label = as.vector(label_matrix), 
                         stringsAsFactors=FALSE)
  bg.param <- data.frame(bg.par, id = seq_len(n),
                         stringsAsFactors=FALSE)
  
  labels <- plyr::mlply(fg.param, cell_content, parse = parse)
  backgrounds <- plyr::mlply(bg.param, cell_background)
  
  label_grobs <- matrix(labels, ncol = nc)
  
  ## some calculations of cell sizes
  
  if(missing(widths))
    widths <- col_widths(label_grobs) + padding[1]
  if(missing(heights))
    heights <- row_heights(label_grobs) + padding[2]
  
  ## place labels in a gtable
  g <- gtable_matrix(name, grobs=label_grobs, 
                     widths = widths, 
                     heights = heights, vp=vp)
  
  ## add the background
  g <- gtable_add_grob(g, backgrounds, t=rep(seq_len(nr), each=nc), 
                       l=rep(seq_len(nc), nr), z=0, name="fill")
  
  g
}


cell_content <- function(..., parse=FALSE){
  dots <- list(...)
  gpar.names <- c("col", "cex", "fontsize", "lineheight", 
                  "font", "fontfamily", "fontface", "alpha")
  other.names <- c("label", "hjust", "vjust", "rot", "x", "y")
  gpar.args <- dots[intersect(names(dots), gpar.names)]
  gp <- do.call(gpar, gpar.args)
  other.args <- dots[intersect(names(dots), other.names)]
  if(parse){
    label <- other.args[["label"]]
    label <- tryCatch(parse(text=label), error = function(e) label)
    other.args[["label"]] <- label
  }
  do.call(textGrob, c(other.args, list(gp = gp)))
  
}

cell_background <- function(...){
  
  dots <- list(...)
  gpar.names <- c("fill", "col", "lty", "lwd", "cex", "alpha",
                  "lineend", "linejoin", "linemitre", 
                  "lex")
  gpar.args <- dots[intersect(names(dots), gpar.names)]
  gp <- do.call(gpar, gpar.args)
  do.call(rectGrob, list(gp = gp))
  
}