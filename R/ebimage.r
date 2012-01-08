##' create a grob from EBImage object
##' 
##' @param pic object of class Image 
##' @param x x unit
##' @param y y unit
##' @param scale numeric scale factor
##' @param raster logical: use rasterGrob(R>=2.11) or imageGrob(RGraphics)
##' @param angle numeric: angle in degrees
##' @param ... optional grob parameters,  passed to imageGrob or rasterGrob
##' @details Very primitive function,  using RGraphics' imageGrob or rasterGrob (R>2.11)
##' @return a gTree of class 'ebimage', with natural width and height in points
##' @family grob userlevel
##' @export
##' 
##' @examples
##' \dontrun{
##' library(EBImage)
##' library(RGraphics)
##'  x <- readImage("http://www.google.com/logos/teachersday09.gif")
##' g1 <- ebimageGrob(x)
##' dev.new(width=g1$width/72, height=g1$height/72) 
##' grid.draw(g1) 
##' }

ebimageGrob <- 
function (pic, x=0.5, y=0.5, scale=1, raster=FALSE, angle = NULL, ...) 
{
  dims <- dim(pic)
  colours = t(channel(pic, "x11"))
  width = unit(scale*dims[1], "points")
  height = unit(scale*dims[2], "points")
  angle <- if(is.null(angle)) 0 else angle
  vp <- viewport(x=x, y=y, width=width, height=height, angle=angle)
  
  if(raster){
    
    child <- 
      rasterGrob(colours, vp=vp, ...)

  } else {
  colours <- colours[ rev(seq_len(nrow(colours))), ]
    require(RGraphics)
    child <- 
      imageGrob(dims[2], dims[1], cols=colours, gp=gpar(col=colours), byrow=FALSE, vp=vp, ...)
  }
  
  gTree(width= width[[1]],
        height = height[[1]], 
        children=gList(child), cl="ebimage")
  
}

