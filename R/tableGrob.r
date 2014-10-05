
gtable_table <- function(d, widths, heights,
                         fg.par = list(col = "black"),
                         bg.par = list(fill = "grey98", col = NA),
                         padding = unit(c(4, 4), "mm"), parse = FALSE,
                         name = "table", vp = NULL){
  
  label_matrix <- as.matrix(d)
  
  nc <- ncol(label_matrix)
  nr <- nrow(label_matrix)
  n <- nc*nr
  
  fg.par <- lapply(fg.par, rep, length.out = n)
  bg.par <- lapply(bg.par, rep, length.out = n)
  
  fg.param <- data.frame(fg.par, label = as.vector(label_matrix), 
                         stringsAsFactors=FALSE)
  bg.param <- data.frame(bg.par, id = seq_len(n),
                         stringsAsFactors=FALSE)
  
  labels <- plyr::mlply(fg.param, cell_content, parse = parse)
  backgrounds <- plyr::mlply(bg.param, cell_background)
  
  label_grobs <- matrix(labels, ncol = nc)
  
  ## some calculations of cell sizes
  row_heights <- function(m){
    do.call(unit.c, apply(m, 1, function(l)
      max(do.call(unit.c, lapply(l, grobHeight)))))
  }
  
  col_widths <- function(m){
    do.call(unit.c, apply(m, 2, function(l)
      max(do.call(unit.c, lapply(l, grobWidth)))))
  }
  
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

# 
# rows=rownames(d), cols=colnames(d), parse=FALSE,
# show.rownames=TRUE, show.colnames=TRUE,
# row.just="center", col.just="center", core.just="center", 
# separator="white", show.box=FALSE, show.vlines=FALSE, show.hlines=FALSE,
# show.namesep=FALSE, show.csep=FALSE, show.rsep=FALSE,
# equal.width = FALSE, equal.height=FALSE, 
# padding.h = unit(4, "mm"), padding.v=unit(4, "mm"),
# gp=NULL, 
# gpar.coretext = gpar(col="black", cex=1),
# gpar.coltext =  gpar(col="black", cex=1, fontface="bold"),
# gpar.rowtext =  gpar(col="black", cex=0.8, fontface="italic"),
# h.odd.alpha = 1, h.even.alpha = 1, 
# v.odd.alpha = 1, v.even.alpha = 1, 
# gpar.corefill = gpar(fill = "grey95", col="white"), 
# gpar.rowfill = gpar(fill = "grey90", col="white"), 
# gpar.colfill = gpar(fill = "grey90", col="white")

#' Graphical display of a textual table.
#'
#' @param d data.frame or matrix
#' @param widths optional vector to specify column widths
#' @param heights optional vector to specify row heights
#' @param fg.par control parameters for text grobs
#' @param bg.par control parameters for rect grobs
#' @param padding unit of length 2
#' @export
#' @examples
#' \donttest{
#' d <- head(iris, 3)
#' g <- tableGrob(d)
#' grid.newpage()
#' grid.draw(g)
#' }
tableGrob <- function(d, rows=rownames(d), cols=colnames(d), 
                      parse=FALSE, fg.par = NULL, bg.par = NULL,
                      ...){
  
  if(is.null(bg.par)){
    fill <- rep(c("grey95","grey90"), each=ncol(d), length.out=ncol(d)*nrow(d))
    bg.par <- list(fill=fill, col=NA)
  }
  if(is.null(fg.par)){
    fg.par <- list(col="black")
  }
  
  g <- gtable_table(d, fg.par = fg.par, bg.par = bg.par, parse=parse)
  colhead <- gtable_table(t(colnames(d)), parse=parse,  
                          padding = unit(c(4, 6), "mm"),
                          fg.par=list(fontface="bold"), 
                          bg.par=list(fill="grey80", col="white"))
  rowhead <- gtable_table(c("", rownames(d)), parse=FALSE, 
                          fg.par=list(fontface="italic"))
  g <- rbind(colhead, g)
  g <- cbind(rowhead, g)
  g
}
