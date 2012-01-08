##' create a grob from pixmap object
##' 
##' @param pic pixmap object
##' @param x x unit
##' @param y y unit
##' @param scale scale 
##' @param raster raster 
##' @param angle angle 
##' @param vp viewport
##' @param ... optional grob parameters,  passed to imageGrob or rasterGrob
##' @details Very primitive function,  using RGraphics' imageGrob or rasterGrob (R>=2.11)
##' @return a gTree of class 'pixmap', with natural width and height in points
##' @family grob userlevel
##' @export
##' @examples
##' library(pixmap)
##' library(RGraphics)
##' x <- read.pnm(system.file("pictures/logo.ppm", package="pixmap")[1])
##' g1 <- pixmapGrob(x)
##' dev.new(width=g1$width/72, height=g1$height/72) 
##' grid.draw(g1)
pixmapGrob <- 
function (pic, x=0.5, y=0.5, scale=1, raster=FALSE, angle=0, vp=NULL, ...) 
{
  rast <- as.raster(pic)
  pic = as(pic, "pixmapIndexed")
  width =  unit(scale*pic@bbox[3], "points")
  height =  unit(scale*pic@bbox[4], "points")
  Z <- pic@index[nrow(pic@index):1, , 
               drop = FALSE]
  
  angle <- if(is.null(angle)) 0 else angle
  vpc <- viewport(x=x, y=y, width=width, height=height, angle=angle,
                 xscale = c(0, ncol(Z)), yscale =c(0, nrow(Z)))
  
 if(raster){
    child <- rasterGrob(rast, vp=vpc, ...)

  } else {
     child <- 
       imageGrob(nrow(Z), ncol(Z), cols=pic@col[Z], gp=gpar(col=pic@col[Z]), byrow=FALSE, vp=vpc, ...)
  }
 
  gTree(width= width[[1]],
        height = height[[1]], vp=vp,
        children=gList(child), childrenvp=vpc, cl="pixmap")
  
}

##' @export
as.raster.pixmapRGB <- function(x) {
    nr <- nrow(x@red)
    r <- rgb((x@red), (x@green), (x@blue))
    dim(r) <- x@size
    r
}

##' read tiff files with pixmap
##' 
##' @aliases as.raster.pixmapRGB read.tiff
##' @param con connection
##' @param ... unused
##' @return ...
##' @family userlevel
##' @export
## function obtained from Simon Urbanek
## to import tiff files in pixmap
## Thu Jun 5 16:15:40 CEST 2008            
## https://stat.ethz.ch/pipermail/r-sig-mac/2008-June/005047.html
##

read.tiff <- function(con, ...) {
     if (is.character(con)) {
         con = file(con, "rb")
         on.exit(close(con))
     }
   sig = readBin(con, 1L, 1, 2)
   if (sig != 0x4949 && sig != 0x4d4d) stop("Invalid signature")
   end = if (sig == 0x4949) "little" else "big"
   if (readBin(con, 1L, 1, 2, endian=end) != 42) stop("Invalid  
signature")
   o = readBin(con, 1L, 1, 4, endian=end)
   data = readBin(con, 1L, o - 8, 1, signed=FALSE, endian=end)
   ifds = readBin(con, 1L, 1, 2, endian=end)
   info = list()
   for (i in 1:ifds) {
     tag = readBin(con, 1L, 6, 2, endian=end)
     if (tag[1] == 257) info$height = tag[5]
     if (tag[1] == 256) info$width = tag[5]
     if (tag[1] == 259 && tag[5] != 1) stop("compressed TIFFs are not  
supported")
   }
   if (is.null(info$width)||is.null(info$height)) stop("missing width/ 
height tags")
   res = array(data/255, dim=c(3, info$width, info$height))
   z = pixmapRGB(0, ncol = dim(res)[2], nrow = dim(res)[3], ...)
   z@red = t(res[1, , ])
   z@green = t(res[2, , ])
   z@blue = t(res[3, , ])
   z
}

