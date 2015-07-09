##' arrange grobs on a page
##'
##' @aliases grid.arrange arrangeGrob
##' @title arrangeGrob
##' @param ...  grobs, and valid arguments to grid.layout
##' @param grobs list of grobs
##' @param top string, or grob (requires a well-defined height, see example)
##' @param bottom string, or grob (requires a well-defined height, see example)
##' @param left string, or grob (requires a well-defined width, see example)
##' @param right string, or grob (requires a well-defined width, see example)
##' @param as.table logical: bottom-left to top-right or top-left to bottom-right
##' @param layout_matrix optional layout
##' @param vp viewport
##' @return return a gTree wrapping a gtable
##' @import gtable
##' @import grid
##' @export
##' 
##' @examples
##' \dontrun{
##' require(ggplot2)
##' plots = lapply(1:5, function(.x) qplot(1:10,rnorm(10), main=paste("plot",.x)))
##' require(gridExtra)
##' do.call(grid.arrange,  plots)
##' require(lattice)
##' grid.arrange(qplot(1:10), xyplot(1:10~1:10),
##' tableGrob(head(iris)), nrow=2, as.table=TRUE, main="test main",
##' left = rectGrob(width=unit(1,"line)),
##' sub=textGrob("test sub", gp=gpar(font=2)))
##' }
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
  gt <- gtable(name=name, respect = respect,
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
    gt <- gtable_add_rows(gt, widths=grobHeight(bottom), -1)
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
##' @param ... args to \link{arrangeGrob}
##' @param top see \link{arrangeGrob}
##' @return list of class arrangelist
##' @author baptiste Auguie
##' @export
##' @family user
##' @examples
##' \dontrun{ 
##' require(ggplot2)
##' pl <- lapply(1:11, function(.x) qplot(1:10,rnorm(10), main=paste("plot",.x)))
##' ml <- marrangeGrob(pl, nrow=2, ncol=2, 4)
##' ## interactive use; open new devices
##' ml
##' ## non-interactive use, multipage pdf
##' ggsave("multipage.pdf", ml)
##' }
marrangeGrob <- function(grobs, ncol, nrow, perpage, ...,
                         top=quote(paste("page", g, "of", pages))){
   
  n <- length(grobs)
  nlay <- nrow*ncol
  pages <- n %/% nlay + as.logical(n %% nlay)
  
  groups <- split(seq_along(grobs), 
                  gl(pages, nlay, n))
  
  pl <- vector(mode = "list", length = pages)
  
  for(page in seq_along(groups)){
    g <- page
    params <- modifyList(list(...), list(top=eval(top), nrow=nrow, ncol=ncol))
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
