##' Arrange multiple grobs on a page
##'
##' @aliases grid.arrange arrangeGrob
##' @title arrangeGrob
##'
##' @param ...  grobs, and valid arguments to grid.layout
##' @param grobs list of grobs
##' @param top optional string, or grob
##' @param bottom optional string, or grob
##' @param left optional string, or grob
##' @param right optional string, or grob
##' @param as.table logical: bottom-left to top-right or top-left to bottom-right
##' @param layout_matrix optional layout
##' @param name argument of gtable
##' @param respect argument of gtable
##' @param nrow argument of gtable
##' @param ncol argument of gtable
##' @param widths argument of gtable
##' @param heights argument of gtable
##' @param vp viewport
##' @return return a gtable
##' @import gtable
##' @import grid
##' @export
##' 
##' @examples
##' library(grid)
##' grid.arrange(rectGrob(), rectGrob())
arrangeGrob <- function(..., grobs=list(...), 
                        layout_matrix, 
                        vp=NULL, name = "arrange",
                        as.table=TRUE, respect = FALSE,
                        nrow=NULL, ncol=NULL, 
                        widths = NULL, heights = NULL,
                        top = NULL, bottom = NULL, 
                        left = NULL, right = NULL){
  
  ## figure out the layout
  n <- length(grobs)
  
  if(is.null(nrow) && is.null(ncol)) 
  {
    nm <- n2mfrow(n)
    nrow = nm[1]
    ncol = nm[2]
  }
  if(is.null(nrow)) nrow <- ceiling(n/ncol)
  if(is.null(ncol)) ncol <- ceiling(n/nrow)
     
  ## conversions
  inherit.ggplot <-  unlist(lapply(grobs, inherits, what="ggplot"))
  inherit.trellis <- unlist(lapply(grobs, inherits, what="trellis"))
  if(any(inherit.ggplot)) {
    stopifnot(requireNamespace("ggplot2", quietly = TRUE)) 
    toconv <- which(inherit.ggplot)
    grobs[toconv] <- lapply(grobs[toconv], ggplot2::ggplotGrob)
  }
  if(any(inherit.trellis)) {
    stopifnot(requireNamespace("lattice", quietly = TRUE)) 
    toconv <- which(inherit.trellis)
    grobs[toconv] <- lapply(grobs[toconv], latticeGrob)
  }
  
  if(missing(layout_matrix)){ # default layout: one cell for each grob
    
    positions <- expand.grid(t = seq_len(nrow), 
                             l = seq_len(ncol))
    positions$b <- positions$t
    positions$r <- positions$l
    if(as.table) # fill table by rows
      positions <- positions[order(positions$t),]
    
    positions <- positions[seq_along(grobs), ] # n might be < ncol*nrow
    
  } else { # a layout was supplied
    
    cells <- sort(unique(as.vector(layout_matrix)))
    ## left/right/top/bottom borders for given id
    range_cell <- function(ii){
      ind <- which(layout_matrix == ii, arr.ind=TRUE)
      c(l=min(ind[,"col"]),
        r=max(ind[,"col"]),
        t=min(ind[,"row"]),
        b=max(ind[,"row"]))
    }
    positions <- data.frame(do.call(rbind, lapply(cells, range_cell)))
    nrow <- max(positions$r)
    ncol <- max(positions$b)
  }
  
  ## sizes
  if(is.null(widths)) widths <- unit(rep(1, ncol), "null")
  if(is.null(heights)) heights <- unit(rep(1,nrow), "null")
  
  ## build the gtable, similar steps to gtable_matrix
  gt <- gtable(name=name, 
               respect = respect,
               heights = heights, 
               widths = widths, 
               vp=vp)
  
  gt <- gtable_add_grob(gt, grobs, 
                        t = positions$t, 
                        b = positions$b,
                        l = positions$l,
                        r = positions$r)
  
  ## titles given as strings are converted to text grobs
  if(is.character(top)){
    gt <- gtable_add_rows(gt, heights=unit(1,"line"), 0)
    gt <- gtable_add_grob(gt, textGrob(top), t=1, l=1, r=ncol(gt))
  }
  if(is.grob(top)){
    gt <- gtable_add_rows(gt, heights=grobHeight(top), 0)
    gt <- gtable_add_grob(gt, top, t=1, l=1, r=ncol(gt))
  }
  if(is.character(bottom)){
    gt <- gtable_add_rows(gt, heights=unit(1,"line"), -1)
    gt <- gtable_add_grob(gt, textGrob(bottom), t=nrow(gt), l=1, r=ncol(gt))
  }
  if(is.grob(bottom)){
    gt <- gtable_add_rows(gt, heights=grobHeight(bottom), -1)
    gt <- gtable_add_grob(gt, bottom, t=nrow(gt), l=1, r=ncol(gt))
  }
  if(is.character(left)){
    gt <- gtable_add_cols(gt, widths=unit(1,"line"), 0)
    gt <- gtable_add_grob(gt, textGrob(left, rot = 90), 
                          t=1, b=nrow(gt), l=1, r=1)
  }
  if(is.grob(left)){
    gt <- gtable_add_cols(gt, widths=grobWidth(left), 0)
    gt <- gtable_add_grob(gt, left, t=1, b=nrow(gt), l=1, r=1)
  }
  if(is.character(right)){
    gt <- gtable_add_cols(gt, widths=unit(1,"line"), -1)
    gt <- gtable_add_grob(gt, textGrob(right, rot = -90), 
                          t=1, b=nrow(gt), l=ncol(gt), r=ncol(gt))
  }
  if(is.grob(right)){
    gt <- gtable_add_cols(gt, widths=grobWidth(right), -1)
    gt <- gtable_add_grob(gt, right, t=1, b=nrow(gt), l=ncol(gt), r=ncol(gt))
  }
  
  gt
}

##' @describeIn arrangeGrob
##' @param newpage open a new page
##' @inheritParams arrangeGrob
##' @export
grid.arrange <- function(..., newpage=TRUE){
    if(newpage) grid.newpage()
    g <- arrangeGrob(...)
    grid.draw(g)
    invisible(g)
}

##' Interface to arrangeGrob that can dispatch on multiple pages
##'
##' If the layout specifies both nrow and ncol, the list of grobs can be split
##' in multiple pages. Interactive devices print open new windows, whilst non-interactive
##' devices such as pdf call grid.newpage() between the drawings.
##' @title marrangeGrob
##' @aliases marrangeGrob print.arrangelist
##'
##' @param ... args to \link{arrangeGrob}
##' @param grobs list of grobs
##' @param ncol number of columns per page
##' @param nrow number of rows per page
##' @param top see \link{arrangeGrob}
##' @return list of class arrangelist
##' @author baptiste Auguie
##' @export
##' @examples
##' \dontrun{ 
##' library(ggplot2)
##' pl <- lapply(1:11, function(.x) qplot(1:10,rnorm(10), main=paste("plot",.x)))
##' ml <- marrangeGrob(pl, nrow=2, ncol=2)
##' ## interactive use; open new devices
##' ml
##' ## non-interactive use, multipage pdf
##' ggsave("multipage.pdf", ml)
##' }
marrangeGrob <- function(grobs, ncol, nrow, ...,
                         top = quote(paste("page", g, "of", pages))){
   
  n <- length(grobs)
  nlay <- nrow*ncol
  pages <- n %/% nlay + as.logical(n %% nlay)
  
  groups <- split(seq_along(grobs), 
                  gl(pages, nlay, n))
  
  pl <- vector(mode = "list", length = pages)
  
  for(page in seq_along(groups)){
    g <- page
    params <- modifyList(list(...), list(top=eval(top), 
                                         nrow=nrow, ncol=ncol))
    pl[[g]] <- do.call(arrangeGrob, c(grobs[groups[[g]]], params))
  }
  
  class(pl) <- c("arrangelist", class(pl))
  pl

}

##' @export
grid.draw.arrangelist = function(x, ...) lapply(x, function(.x) {
  if(dev.interactive()) dev.new() else grid.newpage()
  grid.draw(.x)
}, ...)

##' @export
print.arrangelist = function(x, ...) lapply(x, function(.x) {
  if(dev.interactive()) dev.new() else grid.newpage()
  grid.draw(.x)
}, ...)
