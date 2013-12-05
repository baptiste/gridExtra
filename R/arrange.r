##' arrange ggplot2, lattice, and grobs on a page
##'
##' @aliases grid.arrange arrangeGrob latticeGrob drawDetails.lattice print.arrange
##' @title arrangeGrob
##' @param ...  plots of class ggplot2,  trellis, or grobs, and valid arguments to grid.layout
##' @param main string, or grob (requires a well-defined height, see example)
##' @param sub string, or grob (requires a well-defined height, see example)
##' @param legend string, or grob (requires a well-defined width, see example)
##' @param left string, or grob (requires a well-defined width, see example)
##' @param as.table logical: bottom-left to top-right or top-left to bottom-right
##' @param clip logical: clip every object to its viewport
##' @return return a frame grob
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
arrangeGrob <- function(..., as.table=FALSE, clip=TRUE,
                        main=NULL, sub=NULL, left=NULL,
                        legend=NULL) {

  
  if(is.null(main)) main <- nullGrob()
  if(is.null(sub)) sub <- nullGrob()
  if(is.null(legend)) legend <- nullGrob()
  if(is.null(left)) left <- nullGrob()
  
  if(is.character(main)) main <- textGrob(main)
  if(is.character(sub)) sub <- textGrob(sub)
  if(is.character(legend)) legend <- textGrob(legend, rot=-90)
  if(is.character(left)) left <- textGrob(left, rot=90)

  arrange.class <- "arrange" # grob class
  
  dots <- list(...)
  
  params <- c("nrow", "ncol", "widths", "heights",
              "default.units", "respect", "just" )
 ## names(formals(grid.layout))
  layout.call <- intersect(names(dots), params)
  params.layout <- dots[layout.call]
  if(is.null(names(dots)))
    not.grobnames <- FALSE else
  not.grobnames <- names(dots) %in% layout.call
  
  grobs <- dots[! not.grobnames ]
  
  n <- length(grobs)
  
  nm <- n2mfrow(n)
  
  if(is.null(params.layout$nrow) & is.null(params.layout$ncol)) 
    {
      params.layout$nrow = nm[1]
      params.layout$ncol = nm[2]
    }
  if(is.null(params.layout$nrow))
    params.layout$nrow = ceiling(n/params.layout$ncol)
  if(is.null(params.layout$ncol))
    params.layout$ncol = ceiling(n/params.layout$nrow)
  
  nrow <- params.layout$nrow 
  ncol <- params.layout$ncol

  lay <- do.call(grid.layout, params.layout)
  
  fg <- frameGrob(layout=lay)

  ## if a ggplot is present, make the grob derive from the ggplot class
  classes <- lapply(grobs, class)
  inherit.ggplot <- any("ggplot" %in% unlist(classes))
  if(inherit.ggplot) arrange.class <- c(arrange.class, "ggplot")
  
  ii.p <- 1
  for(ii.row in seq(1, nrow)){
    ii.table.row <- ii.row 
    if(as.table) {ii.table.row <- nrow - ii.table.row + 1}
    for(ii.col in seq(1, ncol)){
      ii.table <- ii.p
      if(ii.p > n) break
      
      ##  select current grob
      cl <- class(grobs[[ii.table]])
      ct <- if("grob" %in% unlist(cl)) "grob" else
      if("ggplot" %in% unlist(cl)) "ggplot" else cl
      
      g.tmp <- switch(ct,
                      ggplot = ggplotGrob(grobs[[ii.table]]),
                      trellis = latticeGrob(grobs[[ii.table]]),
                      grob = grobs[[ii.table]], 
                      stop("input must be grobs!"))
      
      if(clip) # gTree seems like overkill here ?
        g.tmp <- gTree(children=gList(clipGrob(), g.tmp))
      
      fg <- placeGrob(fg, g.tmp, row=ii.table.row, col=ii.col)
      ii.p <- ii.p + 1
    }
  }

  ## optional annotations in a frame grob
  wl <- unit(1, "grobwidth", left) 
  wr <- unit(1, "grobwidth", legend)
  hb <- unit(1, "grobheight", sub)
  ht <- unit(1, "grobheight", main)
  
  annotate.lay <- grid.layout(3, 3,
                              widths=unit.c(wl, unit(1, "npc")-wl-wr, wr),
                              heights=unit.c(ht, unit(1, "npc")-hb-ht, hb))
  
  af <- frameGrob(layout=annotate.lay)
  
  af <- placeGrob(af, fg, row=2, col=2)
  af <- placeGrob(af, main, row=1, col=2)
  af <- placeGrob(af, sub, row=3, col=2)
  af <- placeGrob(af, left, row=2, col=1)
  af <- placeGrob(af, legend, row=2, col=3)
  
 
  invisible(gTree(children=gList(af), cl=arrange.class))
}

##' @export
grid.arrange <- function(..., as.table=FALSE, clip=TRUE,
                    main=NULL, sub=NULL, left=NULL, legend=NULL,
					newpage=TRUE){
    if(newpage) grid.newpage()
    g <- arrangeGrob(...,as.table=as.table, clip=clip,
                     main=main, sub=sub, left=left, legend=legend)
    grid.draw(g)
    invisible(g)
}

##' @export
latticeGrob <- function(p, ...){
 grob(p=p, ..., cl="lattice")
}

##' @export
drawDetails.lattice <- function(x, recording=FALSE){
  lattice:::plot.trellis(x$p, newpage=FALSE)
}

##' @export
print.arrange <- function(x, newpage = is.null(vp), vp = NULL, ...) {
  if(newpage) grid.newpage()
  grid.draw(editGrob(x, vp=vp))
}

##' Interface to arrangeGrob that can dispatch on multiple pages
##'
##' If the layout specifies both nrow and ncol, the list of grobs can be split
##' in multiple pages. Interactive devices print open new windows, whilst non-interactive
##' devices such as pdf call grid.newpage() between the drawings.
##' @title marrangeGrob
##' @aliases marrangeGrob print.arrangelist
##' @param ... grobs
##' @param as.table see \link{arrangeGrob}
##' @param clip see \link{arrangeGrob}
##' @param top see \link{arrangeGrob}
##' @param bottom see \link{arrangeGrob}
##' @param left see \link{arrangeGrob}
##' @param right see \link{arrangeGrob}
##' @return a list of class arrangelist
##' @author baptiste Auguie
##' @export
##' @family user
##' @examples
##' \dontrun{ 
##' require(ggplot2)
##' pl <- lapply(1:11, function(.x) qplot(1:10,rnorm(10), main=paste("plot",.x)))
##' ml <- do.call(marrangeGrob, c(pl, list(nrow=2, ncol=2)))
##' ## interactive use; open new devices
##' ml
##' ## non-interactive use, multipage pdf
##' ggsave("multipage.pdf", ml)
##' }
marrangeGrob <- function(..., as.table=FALSE, clip=TRUE,
                         top=quote(paste("page", g, "of", pages)),
                         bottom=NULL, left=NULL, right=NULL){
   
  arrange.class <- "arrange" # grob class
  
  dots <- list(...)
  
  params <- c("nrow", "ncol", "widths", "heights",
              "default.units", "respect", "just" )
  ## names(formals(grid.layout))
  layout.call <- intersect(names(dots), params)
  params.layout <- dots[layout.call]
  if(is.null(names(dots)))
    not.grobnames <- FALSE else
  not.grobnames <- names(dots) %in% layout.call
  
  grobs <- dots[! not.grobnames ]
  
  n <- length(grobs)
  
  nm <- n2mfrow(n)
  
  if(is.null(params.layout$nrow) & is.null(params.layout$ncol)) 
    {
      params.layout$nrow = nm[1]
      params.layout$ncol = nm[2]
    }
  if(is.null(params.layout$nrow))
    params.layout$nrow = ceiling(n/params.layout$ncol)
  if(is.null(params.layout$ncol))
    params.layout$ncol = ceiling(n/params.layout$nrow)
  
  nrow <- params.layout$nrow 
  ncol <- params.layout$ncol
  
  ## if nrow and ncol were given, may need multiple pages
  nlay <- with(params.layout, nrow*ncol)
  
  ## add one page if division is not complete
  pages <- n %/% nlay + as.logical(n %% nlay)
  
  groups <- split(seq_along(grobs), 
                  gl(pages, nlay, n))
  
  pl <-
    lapply(names(groups), function(g)
           {
             top <- eval(top) ## lazy evaluation
             do.call(arrangeGrob, c(grobs[groups[[g]]], params.layout, 
                                    list(as.table=as.table, clip=clip,
                                         main=top, sub=bottom, left=left, legend=right)))
           })
  
  class(pl) <- c("arrangelist", "ggplot", class(pl))
  pl
  
}

##' @export
print.arrangelist = function(x, ...) lapply(x, function(.x) {
  if(dev.interactive()) dev.new() else grid.newpage()
  grid.draw(.x)
}, ...)
