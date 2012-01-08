tile.motif <- function(m, nx=10, ny=nx){
  cols <- matrix(rep(m, nx), ncol=ncol(m)*nx, byrow=FALSE)
  matrix(rep(t(cols), ny), nrow=nrow(cols)*ny, byrow=TRUE)
}

##' rectangular grob with raster fill pattern
##'
##' @aliases rpatternGrob tile.motif widthDetails.rpattern heightDetails.rpattern drawDetails.rpattern grid.rpattern
##' @title rpatternGrob
##' @param x x unit
##' @param y y unit
##' @param width width 
##' @param height height 
##' @param motif motif 
##' @param AR AR 
##' @param motif.width motif.width 
##' @param motif.height motif.height 
##' @param pattern.offset pattern.offset 
##' @param default.units default.units 
##' @param clip clip 
##' @param gp gp 
##' @param ... additional params passed to the grob
##' @return grob of class rpattern
##' @family grob userlevel
##' @export
##' 
##' @examples
##' .lines45 <- matrix("white", ncol=100, nrow=100)
##' diag(.lines45) <- "black"
##' grid.rpattern(motif=.lines45)

rpatternGrob <- function(x=unit(0.5, "npc"), y=unit(0.5, "npc"),
                        width=unit(1, "npc"), height=unit(1, "npc"),
                        motif=matrix("white"), AR=1, 
                        motif.width=unit(5, "mm"), 
                        motif.height=AR*motif.width, 
                        pattern.offset=c(0, 0), # unimplemented
                        default.units="npc",
                        clip=TRUE, gp=gpar(fill=NA), ...)
  {
    grob(x=x, y=y, width=width, height=height,
         motif=motif, motif.width=motif.width,
         motif.height=motif.height, clip=clip, gp=gp, ..., cl="rpattern")
  }

##' @export
widthDetails.rpattern <- function(x) x$width
##' @export
heightDetails.rpattern <- function(x) x$height

##' @export
drawDetails.rpattern <- function(x, recording=TRUE){

##   calculate the number of tiles
  nx <- ceiling(convertUnit(x$width, "in", valueOnly=TRUE) /
                convertUnit(x$motif.width, "in", valueOnly=TRUE)) + 1
  ny <- ceiling(convertUnit(x$height, "in", axisFrom = "y", valueOnly=TRUE) /
                convertUnit(x$motif.height, "in", axisFrom = "y", valueOnly=TRUE)) + 1

##   clip the raster
  pushViewport(viewport(x=x$x, y=x$y,
          width=x$width, height=x$height, clip=x$clip))
  
  grid.raster(tile.motif(x$motif, nx, ny), width=nx*x$motif.width,
                         height=ny*x$motif.height, interpolate = TRUE)
  upViewport()
  
##   overlay the rectangle
  grid.rect(x=x$x, y=x$y,
          width=x$width, height=x$height,
          just="center", gp=x$gp)
}



##' @export
grid.rpattern <- function(...)
  grid.draw(rpatternGrob(...))
