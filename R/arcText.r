##' place text labels on a circle and display relations with arcs
##'
##' @aliases arcTextGrob grid.arcText
##' @param x x unit
##' @param y y unit
##' @param labels text labels
##' @param links integer vector
##' @param default.units default units
##' @param gp gpar
##' @param ... additional params (unused)
##' @return grob
##' @export
##' @family grob userlevel
##' 
##' @examples
##' library(grid)
##' set.seed(1234)
##' grid.newpage()
##' grid.arcText()

arcTextGrob <- function(x=unit(0.5, "npc"), y=unit(0.5, "npc"),
                        labels=LETTERS,
                        links=sample(seq_along(labels), 50, replace = TRUE),
                        default.units="npc",
                        gp=gpar(), ...)
  {

    ##     circle
    full.height <- sum(stringHeight(labels))
    radius <- 1.2 /(2*pi) * full.height
    g1 <- circleGrob(0.5, 0.5, r=radius, default.units="npc", gp=gpar(col=NA))

    ##     text labels
    n <- length(labels)
    ang <- seq(0, n-1) * 2 * pi/n

    radius.npc <- convertUnit(radius, "npc", valueOnly=TRUE)
    coords <- data.frame(x=0.5+radius.npc*cos(ang), y=0.5+radius.npc*sin(ang))
    g2 <- textGrob(labels, x=coords$x , y=coords$y , rot=ang*180/pi, default.units="npc", hjust=0)

    ##     connecting pairs
    
    xm <- matrix(coords$x[links], ncol=2, byrow=TRUE)
    ym <- matrix(coords$y[links], ncol=2, byrow=TRUE)

    ## find out which pairs are not in trigo order
    ## and swap them
    swap <- as.logical(sign((xm[, 1]-0.5)*(ym[, 2]-0.5) - (xm[, 2]-0.5)*(ym[, 1]-0.5)) + 1)
    xm[swap, ] <- rev(xm[swap])
    ym[swap, ] <- rev(ym[swap])
    
    g3 <- do.call(gList, mapply(curveGrob, x1=xm[, 1], y1=ym[, 1], x2=xm[, 2], y2=ym[, 2],
                                ncp=8, curvature=0.4, square=FALSE, SIMPLIFY=FALSE))
    
    gTree(children=gList(g1, g2, g3),
          outer.radius=convertUnit(radius, "npc") +
          convertUnit(max(stringWidth(labels)), "npc"))
  }


##' @export
grid.arcText <- function(...)
  grid.draw(arcTextGrob(...))
