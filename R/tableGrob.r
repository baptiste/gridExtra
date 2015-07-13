#' Graphical display of a textual table.
#'
#' @param d data.frame or matrix
#' @param rows optional vector to specify row names
#' @param cols optional vector to specify column names
#' @param theme list of theme parameters
#' @param ... further arguments to control the gtable
#' @return a gtable
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
  
  g <- gtable_table(d, name="core",
                    fg_params = theme$core$fg_params, 
                    bg_params = theme$core$bg_params, 
                    padding=theme$core$padding, ...)
  
  if(!is.null(cols)){
    gc <- gtable_table(t(cols), name="colhead",
                       fg_params = theme$colhead$fg_params, 
                       bg_params = theme$colhead$bg_params, 
                       padding=theme$colhead$padding)
    g <- rbind_gtable(gc, g)
  }
  if(!is.null(rows)){
    if(!is.null(cols)) # need to add dummy cell
      rows <- c("", rows)
    gr <- gtable_table(rows, name="rowhead",
                       fg_params = theme$rowhead$fg_params, 
                       bg_params = theme$rowhead$bg_params,
                       padding=theme$rowhead$padding)
    g <- cbind_gtable(gr, g)
  }
  
  g
}

#' @describeIn tableGrob
#' @inheritParams tableGrob
#' @export
grid.table <- function(...)
  grid.draw(tableGrob(...))


#' @describeIn tableGrob
#' @inheritParams tableGrob
##' @export
ttheme_default <- function(...){
  
  core <- list(fg_fun = text_grob, 
               fg_params = list(parse=TRUE, col="black"),
               bg_fun = rect_grob, 
               bg_params = list(fill = c("grey95","grey90"), 
                                lwd=1.5, col="white"),
               padding = unit(c(4, 4), "mm"))
  
  colhead <- list(fg_fun = text_grob, 
                  fg_params = list(parse=TRUE, fontface="bold"),
                  bg_fun = rect_grob, 
                  bg_params = list(fill = c("grey80"), 
                                   lwd=1.5, col="white"),
                  padding = unit(c(4, 4), "mm"))
  
  rowhead <- list(fg_fun = text_grob, 
                  fg_params = list(parse=TRUE, fontface="italic", 
                                   hjust = 1, x = 0.95),
                  bg_fun = rect_grob, 
                  bg_params = list(fill=NA, col=NA),
                  padding = unit(c(4, 4), "mm"))
  
  default <- list(
    core = core,
    colhead = colhead,
    rowhead= rowhead
  )
  
  modifyList(default, list(...))
  
}



#' @describeIn tableGrob
#' @inheritParams tableGrob
##' @export
ttheme_minimal <- function(...){
  
  core <- list(fg_fun = text_grob, 
               fg_params = list(parse=TRUE, col="black"),
               bg_fun = rect_grob, 
               bg_params = list(fill = NA, col=NA),
               padding = unit(c(4, 4), "mm"))
  
  colhead <- list(fg_fun = text_grob, 
                  fg_params = list(parse=TRUE, fontface="bold"),
                  bg_fun = rect_grob, 
                  bg_params = list(fill = NA, col=NA),
                  padding = unit(c(4, 4), "mm"))
  
  rowhead <- list(fg_fun = text_grob, 
                  fg_params = list(parse=TRUE, fontface="italic", 
                                   hjust = 1, x = 0.95),
                  bg_fun = rect_grob, 
                  bg_params = list(fill=NA, col=NA),
                  padding = unit(c(4, 4), "mm"))
  
  default <- list(
    core = core,
    colhead = colhead,
    rowhead= rowhead
  )
  
  modifyList(default, list(...))
  
}


#' @export
text_grob <- function(label, 
                      parse=FALSE, 
                      col = "black",
                      fontsize = 12, 
                      cex = 1, 
                      fontfamily = "",
                      fontface = "plain",
                      lineheight = 1.2, 
                      alpha = 1, 
                      rot = 0,
                      just = "centre",
                      hjust = 0.5,
                      vjust = 0.5, 
                      x = 0.5, 
                      y = 0.5){
  if(parse){
    label <- tryCatch(parse(text=label), 
                      error = function(e) label)
  }
  textGrob(label = label, x = x, y = y, 
           just = just, hjust = hjust, vjust = vjust, 
           rot = rot, 
           gp = gpar(col = col, 
                     fontsize = fontsize, 
                     cex = cex, 
                     fontfamily = fontfamily,
                     fontface = fontface,
                     lineheight = lineheight, 
                     alpha = alpha))
}


rect_grob <- function(fill = "white", 
                      col = "black", 
                      lty = "solid", 
                      lwd = 1, cex = 1, 
                      alpha = 1, 
                      lineend = "round", 
                      linejoin = "round", 
                      linemitre = 10, lex = 1){
  rectGrob(gp = gpar(col = col, 
                     fill = fill, 
                     lty = lty, 
                     lwd = lwd, cex = cex, 
                     alpha = alpha, 
                     lineend = lineend, 
                     linejoin = linejoin, 
                     linemitre = linemitre, lex = lex,
                     alpha = alpha))
}


##
## unexported helper functions
##
gtable_table <- function(d, widths, heights,
                         fg_fun = text_grob, fg_params = list(),
                         bg_fun = rect_grob, bg_params = list(),
                         padding = unit(c(4, 4), "mm"),
                         name = "table", vp = NULL){
  
  label_matrix <- as.matrix(d)
  
  nc <- ncol(label_matrix)
  nr <- nrow(label_matrix)
  n <- nc*nr
  
  fg_params <- lapply(fg_params, rep, length.out = n, each = nc)
  bg_params <- lapply(bg_params, rep, length.out = n, each = nc)
  
  fg_params <- data.frame(fg_params, 
                          label = as.vector(label_matrix), 
                          stringsAsFactors=FALSE)
  bg_params <- data.frame(bg_params, stringsAsFactors=FALSE)

  labels <- do.call(mapply, c(fg_params, list(FUN = fg_fun, 
                                              SIMPLIFY=FALSE)))
  bkgds <- do.call(mapply, c(bg_params, list(FUN = bg_fun, 
                                             SIMPLIFY=FALSE)))
  
  label_grobs <- matrix(labels, ncol = nc)
  
  ## some calculations of cell sizes
  
  if(missing(widths))
    widths <- col_widths(label_grobs) + padding[1]
  if(missing(heights))
    heights <- row_heights(label_grobs) + padding[2]
  
  ## place labels in a gtable
  g <- gtable_matrix(paste0(name, "-fg"), grobs=label_grobs, 
                     widths = widths, 
                     heights = heights, vp=vp)
  
  ## add the background
  g <- gtable_add_grob(g, bkgds, 
                       t=rep(seq_len(nr), each=nc), 
                       l=rep(seq_len(nc), nr), z=0, 
                       name=paste0(name, "-bg"))
  
  g
}
