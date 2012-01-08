##' strip of colors
##'
##' @aliases colorstripGrob grid.colorstrip
##' @title colorstrip
##' @param fill vector of colours
##' @param colour vector of colours
##' @param draw logical
##' @param direction direction (horizontal or vertical)
##' @param raster logical,  use grid.raster (with interpolation)
##' @return a grob
##' @seealso \code{grid.rect}
##' @family grob userlevel
##' @export
##' 
##' @examples
##' colorstripGrob(c("#E41A1C", "#377EB8", "#4DAF4A"))

colorstripGrob <- 
  function (fill = 1:3, colour = fill, draw = TRUE, raster = FALSE,
            direction = c("vertical", "horizontal"))
{

  fill.numeric <- is.numeric(fill)
  fill[fill.numeric] <- rgb(t(col2rgb(fill[fill.numeric])), maxColorValue=255)
  
  direction <- match.arg(direction)
  
  my.grob <- if (raster) {
    
    fillm <- switch(direction,
                    "horizontal" = matrix(fill, nrow = 1),
                    "vertical" =  matrix(fill, ncol = 1))

    rasterGrob(fillm, x = unit(0.5, "npc"), 
               y = unit(0.5, "npc"), width = unit(1, "npc"),
               height = unit(1, "npc"), just = "centre",
               hjust = NULL, vjust = NULL, 
               interpolate = TRUE, default.units = "npc", name = NULL, 
               gp = gpar(), vp = NULL)
    } else {
        positions <- cbind(seq(0 + 0.5/length(fill),
                               1 - 0.5/length(fill), length = length(fill)),
                           rep(0.5, length(fill)),
                           1/length(fill), 1)
        
        xy <- switch(direction,
                     "horizontal" = positions[, 1:4, drop=FALSE],
                     "vertical" =  positions[seq(nrow(positions), 1), c(2:1, 4:3), drop=FALSE])
        
        grid.rect(x = unit(xy[, 1], "npc"), y = unit(xy[, 2], "npc"),
                  width = unit(xy[, 3], "npc"),
                  height = unit(xy[, 4], "npc"), just = "center", 
                  hjust = NULL, vjust = NULL, default.units = "npc", 
                  name = NULL, gp = gpar(fill = fill, col = colour), 
                  draw = FALSE, vp = NULL)
      }
  if (draw) 
    grid.draw(my.grob)
  
  my.grob
}

##' @export
grid.colorstrip <- function(...)
  grid.draw(colorstripGrob(...))

