## create a named cell grob
## a function of an integer index that returns a named grob

textii <- function(d, gp=gpar(), name="row-label-",
                   just="center", parse=TRUE){
  x <- switch(just, "center"=0.5, "right"=0.95, "left"=0.1)
  parseglobal <- parse
  ##   allow the correct space to fit well in a rectangle
  function(ii, parse=parseglobal){
    lab <- if(parse) parse(text=d[ii]) else d[ii]
    textGrob(x=x, label=lab, just=just, gp=gp, name=paste(name, ii, sep=""))
  }
}

rectii <- function(ii, gp, name="row-fill-"){
  function(ii)
    rectGrob(gp=gp[[ii]], name=paste(name, ii, sep=""))
}

makeTableGrobs <- function(content, rnames=NULL, cnames=NULL,
        nrow, ncol, parse=TRUE,
        row.just="center", col.just="center", core.just="center",
        equal.width = FALSE, equal.height=FALSE, 
        gpar.coretext = gpar(col="black", cex=1),
        gpar.coltext = gpar(col="black", cex=1, fontface="bold"),
        gpar.rowtext = gpar(col="black", cex=0.8, fontface="italic"),
        h.odd.alpha = 1, h.even.alpha = 1, 
        v.odd.alpha = 1, v.even.alpha = 1, 
        gpar.corefill = gpar(fill = "grey95", col="white"), 
        gpar.rowfill = gpar(fill = "grey90", col="white"), 
        gpar.colfill = gpar(fill = "grey90", col="white")) {

 ncontent <- length(content) # number of labels
 nrnames <- length(rnames) # number of row labels
 ncnames <- length(cnames) # number of col labels

 
 ## define some functions to generate named grobs
 makeOneRowname <- textii(d=rnames, gp=gpar.rowtext, name="row-label-", just=row.just, parse=parse)
 makeOneColname <- textii(d=cnames, gp=gpar.coltext, name="col-label-", just=col.just, parse=parse)
 makeOneLabel <- textii(d=content, gp=gpar.coretext, name="core-label-", just=core.just, parse=parse)
 

 gp.corefillee <- gp.corefilleo <- gp.corefilloe <- gp.corefilloo <- gpar.corefill
 gp.corefillee[["alpha"]] <- h.even.alpha *  v.even.alpha
 gp.corefilloe[["alpha"]] <- h.odd.alpha *  v.even.alpha
 gp.corefilloo[["alpha"]] <- h.odd.alpha *  v.odd.alpha
 gp.corefilleo[["alpha"]] <- h.even.alpha *  v.odd.alpha
 
 gpar.corefill <- rep(c(rep(c(list(gp.corefillee), list(gp.corefilloe)), length.out=nrow),
                        rep(c(list(gp.corefilleo), list(gp.corefilloo)), length.out=nrow)),
                      length.out=ncontent)
 
 gp.rowfille <- gp.rowfillo <- gpar.rowfill
 gp.rowfille[["alpha"]] <-  h.even.alpha
 gp.rowfillo[["alpha"]] <-  h.odd.alpha

 gpar.rowfill <- rep(c(list(gp.rowfille), list(gp.rowfillo)), nrow)
 
 gp.colfille <- gp.colfillo <- gpar.colfill
 gp.colfille[["alpha"]] <-  v.even.alpha
 gp.colfillo[["alpha"]] <-  v.odd.alpha
 
 gpar.colfill <- rep(c(list(gp.colfille), list(gp.colfillo)), ncol)
   
 makeOneCell <- rectii(gp=gpar.corefill, name="core-fill-")
 makeOneRowfill <- rectii(gp=gpar.rowfill, name="row-fill-")
 makeOneColfill <- rectii(gp=gpar.colfill, name="col-fill-")

 ## in case of missing row(col) names,  make a list of virtualGrobs
 ## else,  a list of rectGrobs with incremental names
 if(is.null(rnames)){
   lrt <- lrf <- replicate(nrow, virtualGrob, simplify=FALSE)} else {
  lrt <- lapply(seq_along(rnames), makeOneRowname) # list of text grobs
  lrf <- lapply(seq_along(rnames), makeOneRowfill) # list of rect grobs
   }
 if(is.null(cnames)){
  lct <- lcf <- replicate(ncol, virtualGrob, simplify=FALSE)} else {
  lct <- lapply(seq_along(cnames), makeOneColname) # list of text grobs
  lcf <- lapply(seq_along(cnames), makeOneColfill) # list of rect grobs
   }
 ## the content consists of textGrobs and rectGrobs
  lit <- lapply(seq_along(content), makeOneLabel) # list of text grobs
  lif <- lapply(seq_along(content), makeOneCell) # list of rect grobs

 ## here the grobs are arranged and permuted in a list to fill a matrix column by column
 lgt <- c(list(virtualGrob), lrt, interleaven(lct, lit, nrow)) # all labels in order
 lgf <- c(list(virtualGrob), lrf, interleaven(lcf, lif, nrow)) # all labels in order
 
 ## retrieve the widths and heights of all textGrobs (including some virtualGrobs) 
  wg <- lapply(lgt, grobWidth) # list of grob widths
  hg <- lapply(lgt, grobHeight) # list of grob heights

 ## concatenate this units
  widths.all <- do.call(unit.c, wg) # all grob widths
  heights.all <- do.call(unit.c, hg)    #all grob heights

 ## matrix-like operations on units to define the table layout
  widths <- colMax.units(widths.all, ncol+1)  # all column widths
  heights <- rowMax.units(heights.all, nrow+1)  # all row heights

 ## equal width or equal height (all except rows and cols)
 nwidths <- length(widths)
 nheights <- length(heights)
  if(equal.width)                      
    widths <- unit.c(widths[[1]], rep(max(widths[seq(2, nwidths)]), nwidths-1))
  if(equal.height)
    heights <- unit.c(heights[[1]], rep(max(heights[seq(2, nheights)]), nheights-1))

 ## return a list containing lists of grobs, and the dimensions for a rectangular layout
 list(lgt=lgt, lgf=lgf, nrow=nrow, ncol=ncol, widths=widths, heights=heights)
}


arrangeTableGrobs <- function(lgt, lgf, nrow, ncol, widths, heights,
                              show.colnames, show.rownames,
                               padding.h = unit(4, "mm"), padding.v=unit(4, "mm"), 
                               just=c("center", "center"), separator= "white",
                              show.vlines=FALSE, show.hlines=FALSE, show.namesep=FALSE,
                               show.box=FALSE, show.csep=FALSE, show.rsep=FALSE){
 
  label.ind <- 1   # index running accross labels

  ## loop over columns and rows
  for (ii in seq(1, ncol+1, 1)) {
    for (jj in seq(1, nrow+1, 1)) {
      ## push a viewport for cell (ii,jj)
     pushViewport(vp=viewport( layout.pos.row=jj, layout.pos.col=ii, just=just))
     grid.draw( lgf[[label.ind]])       #draw the fill 
     grid.draw( lgt[[label.ind]])       #draw the text
     upViewport()

     label.ind <- label.ind + 1
    }
  }

  if(show.hlines){
    ## draw horizontal lines, stopping or not before the names
    for (ii in seq(2, nrow, 1)) 
      grid.segments(0, 0, 1, 0, gp=gpar(col=separator), vp=viewport( layout.pos.row=ii,
                                                          layout.pos.col=seq(1+!show.rsep, ncol+1)))
  }
  if(show.vlines){
    ## draw vertical lines, stopping or not before the names
    for (jj in seq(2, ncol, 1)) 
      grid.segments(1, 0, 1, 1, gp=gpar(col=separator), vp=viewport( layout.pos.col=jj,
                                                          layout.pos.row=seq(1+!show.csep, nrow+1)))
  }
  ## draw box around the content (and the names if present)
  if(show.box){
    if(show.colnames & show.rownames){
       grid.border(type=16, colour=separator,
            vp=viewport( layout.pos.col=seq(2, ncol+1), layout.pos.row=seq(2, nrow+1)))
     } else 
    grid.rect(gp=gpar(col=separator, fill=NA), 
                vp=viewport( layout.pos.col=seq(1, ncol+1), layout.pos.row=seq(1, nrow+1)))
  }
  
  if(show.namesep){
  ## draw corner, style depends on the presence of row/colnames
    type <- if(show.colnames & show.rownames) 8 else
    if(show.colnames & !show.rownames) 4 else
    if(!show.colnames & show.rownames) 5 else 1
    
      grid.border(type=type, colour=separator,
            vp=viewport( layout.pos.col=seq(2, ncol+1), layout.pos.row=seq(2, nrow+1)))
  }
  

}


##' create a list of text and fill grobs and calculates the sizes for a table display
##' 
##' @aliases tableGrob grid.table drawDetails.table widthDetails.table heightDetails.table arrangeTableGrobs makeTableGrobs
##' @title tableGrob
##' @param d data.frame
##' @param rows vector of row names
##' @param cols vector of col names
##' @param parse logical, parse labels as expressions
##' @param row.just justification of labels
##' @param col.just justification of labels
##' @param core.just justification of labels
##' @param separator colour of the border lines 
##' @param show.box logical box surrounding the table
##' @param show.vlines logical vertical lines
##' @param show.hlines logical horizontal lines
##' @param show.namesep logical draw lines to separate header(s)
##' @param show.csep logical extend vert. separator to colnames 
##' @param show.rsep logical extend vert. separator to rownames 
##' @param equal.width logical 
##' @param equal.height logical  
##' @param padding.h unit of horizontal margin, per cell
##' @param padding.v unit of vertical margin, per cell
##' @param gpar.coretext gpar() for inner text
##' @param gpar.corefill gpar() for inner fill
##' @param gpar.coltext gpar() for colnames text
##' @param h.odd.alpha numeric transparency factor for odd horizontal cells
##' @param h.even.alpha numeric transparency factor for even horizontal cells
##' @param v.odd.alpha numeric transparency factor for odd vertical cells
##' @param v.even.alpha numeric transparency factor for even vertical cells
##' @param gpar.colfill gpar() for colnames fill
##' @param gpar.rowtext gpar() for rownames text
##' @param gpar.rowfill gpar() for rownames fill
##' @param show.rownames logical
##' @param show.colnames logical
##' @param gp gpar
##' @param theme theme (list of aesthetic elements)
##' @param ... passed to grob
##' @return a grob of class table
##' @family grob userlevel
##' @export
##' 
##' @examples
##' grid.table(head(iris), h.even.alpha=1, h.odd.alpha=1,  v.even.alpha=0.5, v.odd.alpha=1)
##' grid.newpage()
##' grid.draw(tableGrob(head(iris, 10), name="test"))
##' e = expression(alpha,"testing very large width", hat(beta), integral(f(x)*dx, a, b), "abc") 
##' grid.edit("test", cols=e, show.rownames=FALSE, rows=NULL,
##'            gpar.corefill = gpar(fill="white", col=NA),
##'            grep=TRUE, global=TRUE)
##'  grid.newpage()
##'  grid.draw(tableGrob(head(iris, 10),
##'                       show.csep=TRUE, show.rsep=TRUE, show.box=TRUE, separator="grey", name="test"))
##'  grid.edit("test",gp=gpar(fontsize=8, lwd=2),  equal.width=TRUE, grep=TRUE, global=TRUE)
##' # visualize themes
##' lg <- lapply(c("theme.blank", "theme.default", "theme.white",  "theme.vertical",  "theme.list", "theme.black"),
##'              function(x) tableGrob(head(iris[, 1:3]), theme=get(x)()))
##' grid.newpage()
##' do.call(grid.arrange, lg)
##' \dontrun{
##' ## timing: a bit slow due to repeated on-the-fly calculations 
##' pdf("test2.pdf", height=50)
##' print(system.time( grid.table(iris)) ) # about 12s here
##' dev.off()
##' }


tableGrob <- function(d, rows=rownames(d), cols=colnames(d), parse=FALSE,
                      show.rownames=TRUE, show.colnames=TRUE,
                      row.just="center", col.just="center", core.just="center", 
                      separator="white", show.box=FALSE, show.vlines=FALSE, show.hlines=FALSE,
                      show.namesep=FALSE, show.csep=FALSE, show.rsep=FALSE,
                      equal.width = FALSE, equal.height=FALSE, 
                      padding.h = unit(4, "mm"), padding.v=unit(4, "mm"),
                      gp=NULL, 
                      gpar.coretext = gpar(col="black", cex=1),
                      gpar.coltext =  gpar(col="black", cex=1, fontface="bold"),
                      gpar.rowtext =  gpar(col="black", cex=0.8, fontface="italic"),
                      h.odd.alpha = 1, h.even.alpha = 1, 
                      v.odd.alpha = 1, v.even.alpha = 1, 
                      gpar.corefill = gpar(fill = "grey95", col="white"), 
                      gpar.rowfill = gpar(fill = "grey90", col="white"), 
                       gpar.colfill = gpar(fill = "grey90", col="white"), theme=NULL, 
                      ...) {

  ##   this needs to be done later in case a theme is used
  ##  if(!show.rownames) rows <- NULL
  ##  if(!show.colnames) cols <- NULL

  lg <- 
  with(theme, 
       makeTableGrobs(as.character(as.matrix(d)), rows, cols, parse=parse,
                        NROW(d), NCOL(d), 
                        row.just = row.just, col.just = col.just, core.just = core.just, 
                        equal.width = equal.width, equal.height = equal.height, 
                        gpar.coretext = gpar.coretext,
                        gpar.coltext = gpar.coltext,
                        gpar.rowtext = gpar.rowtext,
                        h.odd.alpha = h.odd.alpha, h.even.alpha = h.even.alpha, 
                        v.odd.alpha = v.odd.alpha, v.even.alpha = v.even.alpha, 
                        gpar.corefill = gpar.corefill, 
                        gpar.rowfill = gpar.rowfill, 
                        gpar.colfill = gpar.colfill ))
  
  with(theme, # params provided as a list
   gTree(lg=lg, d=d, rows= if(show.rownames) rows, cols=if(show.colnames) cols, parse=parse,
         show.rownames=show.rownames, show.colnames=show.colnames,
         row.just = row.just, col.just = col.just, core.just = core.just, 
         separator=separator, show.box=show.box,
         show.vlines=show.vlines, show.hlines=show.hlines, show.namesep=show.namesep,
         show.csep=show.csep, show.rsep=show.rsep,
         equal.width = equal.width, equal.height = equal.height, 
         padding.h = padding.h, padding.v = padding.v, 
         gpar.coretext = gpar.coretext,
         gpar.coltext = gpar.coltext,
         gpar.rowtext = gpar.rowtext,
         h.odd.alpha = h.odd.alpha, h.even.alpha = h.even.alpha, 
         v.odd.alpha = v.odd.alpha, v.even.alpha = v.even.alpha, 
         gpar.corefill = gpar.corefill, 
         gpar.rowfill = gpar.rowfill, 
         gpar.colfill = gpar.colfill, 
         cl="table", gp=gp, ...))
  
}
        

##' @export
grid.table <- function(...)
  grid.draw(tableGrob(...))


##' @export
drawDetails.table <- function(x, recording=TRUE){
  
  lg <- with(x, makeTableGrobs(as.character(as.matrix(d)), rows, cols,
         NROW(d), NCOL(d), parse,
         row.just = row.just, col.just = col.just, core.just = core.just, 
         equal.width = equal.width, equal.height = equal.height, 
         gpar.coretext = gpar.coretext,
         gpar.coltext = gpar.coltext,
         gpar.rowtext = gpar.rowtext,
         h.odd.alpha = h.odd.alpha, h.even.alpha = h.even.alpha, 
         v.odd.alpha = v.odd.alpha, v.even.alpha = v.even.alpha, 
         gpar.corefill = gpar.corefill, 
         gpar.rowfill = gpar.rowfill, 
         gpar.colfill = gpar.colfill )  )

  widthsv <- convertUnit(lg$widths + x$padding.h, "mm", valueOnly=TRUE)
  heightsv <- convertUnit(lg$heights + x$padding.v, "mm", valueOnly=TRUE)

  widthsv[1] <- widthsv[1] * as.numeric(x$show.rownames)
  widths <- unit(widthsv, "mm")

  heightsv[1] <- heightsv[1] * as.numeric(x$show.colnames)
  heights <- unit(heightsv, "mm")
  
  cells = viewport(name="table.cells", layout =
    grid.layout(lg$nrow+1, lg$ncol+1, widths=widths, heights=heights) )
  
  pushViewport(cells)
  tg <- arrangeTableGrobs(lg$lgt, lg$lgf, lg$nrow, lg$ncol, lg$widths, lg$heights,
                          show.colnames=x$show.colnames, show.rownames=x$show.rownames,
                          padding.h = x$padding.h, padding.v = x$padding.v, 
                          separator=x$separator, show.box=x$show.box,
                          show.vlines=x$show.vlines, show.hlines=x$show.hlines,		
                          show.namesep=x$show.namesep, show.csep=x$show.csep, show.rsep=x$show.rsep)
  upViewport()
}

##' @export
widthDetails.table <- function(x){
  lg <- x$lg
  widthsv <- convertUnit(lg$widths + x$padding.h, "mm", valueOnly=TRUE)
  widthsv[1] <- widthsv[1] * as.numeric(x$show.rownames)
  widths <- unit(widthsv, "mm")

  sum(widths)
}

##' @export
heightDetails.table <- function(x){
  lg <- x$lg
  heightsv <- convertUnit(lg$heights + x$padding.v, "mm", valueOnly=TRUE)

  heightsv[1] <- heightsv[1] * as.numeric(x$show.colnames)
  heights <- unit(heightsv, "mm")

  sum(heights)
}


##' themes for table grob
##' @aliases theme.default theme.grey theme.list theme.blank theme.vertical theme.black theme.white
##' @title theme
##' @param ... optional params to overwrite the theme defaults
##' @return theme
##' @export
theme.default <- theme.grey <- function(...)
  modifyList(list(show.rownames=TRUE, show.colnames=TRUE,
     row.just="center", col.just="center", core.just="center", 
     separator="white", show.box=FALSE, show.vlines=FALSE, show.hlines=FALSE, show.namesep=FALSE,
                  show.csep=FALSE, show.rsep=FALSE,
     equal.width = FALSE, equal.height=FALSE, 
     padding.h = unit(4, "mm"), padding.v=unit(4, "mm"),
     gp=NULL, 
     gpar.coretext = gpar(col="black", cex=1),
     gpar.coltext =  gpar(col="black", cex=1, fontface="bold"),
     gpar.rowtext =  gpar(col="black", cex=0.8, fontface="italic"),
     h.odd.alpha = 1, h.even.alpha = 1, 
     v.odd.alpha = 1, v.even.alpha = 1, 
     gpar.corefill = gpar(fill = "grey95", col="white"), 
     gpar.rowfill = gpar(fill = "grey90", col="white"), 
     gpar.colfill = gpar(fill = "grey90", col="white")), list(...))


##' @export
theme.list <- function(...)
  modifyList(
             theme.default(show.rownames=FALSE, show.colnames=FALSE, separator=NA,
                           core.just="left", gpar.corefill=gpar(col=NA),
                           show.csep=FALSE, show.rsep=FALSE,
                           gpar.corefill = gpar(fill = NA, col=NA), 
                           gpar.rowfill = gpar(fill = NA, col=NA), 
                           gpar.colfill = gpar(fill = NA, col=NA)), list(...))


##' @export
theme.black <- function(...)
  modifyList(
             theme.default(show.rownames=TRUE, show.colnames=TRUE,
                           separator="white",
                           h.odd.alpha = 0.8, h.even.alpha = 0.5, 
                           show.csep=TRUE, show.rsep=TRUE,
                           gpar.coretext = gpar(col="white", cex=1),
                           gpar.coltext =  gpar(col="white", cex=1, fontface="bold"),
                           gpar.rowtext =  gpar(col="white", cex=0.8, fontface="italic"),
                           gpar.corefill = gpar(fill = "black", col=NA), 
                           gpar.rowfill = gpar(fill = "black", col=NA), 
                           gpar.colfill = gpar(fill = "black", col=NA)), list(...))

##' @export
theme.blank <- function(...)
  modifyList(
             theme.default(show.rownames=TRUE, show.colnames=TRUE,
                           gpar.corefill=gpar(col=NA),separator=NA, 
                           show.csep=FALSE, show.rsep=FALSE,
                           gpar.corefill = gpar(fill = NA, col=NA), 
                           gpar.rowfill = gpar(fill = NA, col=NA), 
                           gpar.colfill = gpar(fill = NA, col=NA)), list(...))


##' @export
theme.vertical <- function(...)
  modifyList(
             theme.default(show.rownames=FALSE, show.colnames=TRUE,
                           row.just="center", col.just="center", core.just="center", 
                           separator="white", show.box=FALSE, show.csep=FALSE, show.rsep=FALSE,
                           equal.width = FALSE, equal.height=FALSE, 
                           padding.h = unit(4, "mm"), padding.v=unit(4, "mm"), 
                           gpar.coretext = gpar(col="black", cex=1),
                           gpar.coltext =  gpar(col="black", cex=1, fontface="bold"),
                           gpar.rowtext =  gpar(col="black", cex=0.8, fontface="italic"),
                           h.odd.alpha = 1, h.even.alpha = 1, 
                           v.odd.alpha = 0.5, v.even.alpha = 0, 
                           gpar.corefill = gpar(fill = "grey90", col=NA), 
                           gpar.rowfill = gpar(fill =  "grey90", col=NA), 
                           gpar.colfill = gpar(fill = "grey90", col=NA)), list(...))


##' @export
theme.white <- function(...)
  modifyList(
             theme.default(show.rownames=FALSE, show.colnames=TRUE,
                           row.just="center", col.just="center", core.just="center", 
                           separator="white", show.box=FALSE, show.csep=FALSE, show.rsep=FALSE,
                           equal.width = FALSE, equal.height=FALSE, 
                           padding.h = unit(4, "mm"), padding.v=unit(4, "mm"), 
                           gpar.coretext = gpar(col="black", cex=1),
                           gpar.coltext =  gpar(col="black", cex=1, fontface="bold"),
                           gpar.rowtext =  gpar(col="black", cex=0.8, fontface="italic"),
                           h.odd.alpha = 0.5, h.even.alpha = 0, 
                           v.odd.alpha = 1, v.even.alpha = 1, 
                           gpar.corefill = gpar(fill = "grey90", col=NA), 
                           gpar.rowfill = gpar(fill =  "grey90", col=NA), 
                           gpar.colfill = gpar(fill = "grey90", col=NA)), list(...))

