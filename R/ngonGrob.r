## compute vertices of a convex polygon
polygon_regular <- function(n = 5, phase = 0){
  stopifnot(n > 2)
  cc <- exp(seq(0, n)*2i*pi/n) * exp(1i*(phase+pi/2))
  cbind(Re(cc), Im(cc))
}


##' Regular polygon grob
##'
##' @aliases ngonGrob grid.ngon ellipseGrob grid.ellipse
##' @title ngonGrob
##' @param x x unit
##' @param y y unit
##' @param n number of vertices
##' @param size radius of circumscribing circle
##' @param phase angle of first point relative to x axis
##' @param rho aspect ratio
##' @param default.units default units for the positions
##' @param size.units grid units for the sizes
##' @param gp gpar
##' @param ... further parameters passed to polygonGrob
##' @return grob
##' @export
##' @examples
##' N <- 10
##' xy <- polygon_regular(N)*2
##' test <- ngonGrob(unit(xy[,1],"cm") + unit(0.5,"npc"), 
##'                  unit(xy[,2],"cm") + unit(0.5,"npc"),
##'                  n = seq_len(N) + 2)
##' 
##' grid.newpage()
##' grid.draw(test)
##' 
##' 
##' N <- 5
##' xy <- polygon_regular(N)*2
##' test <- ngonGrob(unit(xy[,1],"cm") + unit(0.5,"npc"), 
##'                  unit(xy[,2],"cm") + unit(0.5,"npc"),
##'                  n = seq_len(N) + 2,
##'                  phase = pi/2, angle=pi/(seq_len(N)+2),
##'                  size=1:N+5)
##' 
##' grid.newpage()
##' grid.draw(test)
##' 
##' N <- 5
##' xy <- polygon_regular(N)*2
##' test <- ngonGrob(unit(xy[,1],"cm") + unit(0.5,"npc"), 
##'                  unit(xy[,2],"cm") + unit(0.5,"npc"),
##'                  n = 50,
##'                  phase = 0, angle=seq_len(N)* pi/N,
##'                  size=1:N+5, rho=1:N)
##' 
##' grid.newpage()
##' grid.draw(test)
ngonGrob <- function (x, y, n = 5, size = 5, phase = pi/2, 
                      angle = pi/4, rho = 1,
                      gp = gpar(colour = "black", fill = NA, 
                                linejoin = "mitre"), ..., 
                      position.units = "npc", size.units="mm") 
{
  N <- length(x)
  stopifnot(length(y) == N)
  
  if (!is.unit(x)) 
    x <- unit(x, position.units)
  if (!is.unit(y)) 
    y <- unit(y, position.units)
  
  xv <- convertX(x, "npc", TRUE)
  yv <- convertY(y, "npc", TRUE)
  
  if (length(n) < N) 
    n <- rep(n, length.out = N)
  if (length(size) < N) 
    size <- rep(size, length.out = N)
  if (length(phase) < N) 
    phase <- rep(phase, length.out = N)
  if (length(angle) < N) 
    angle <- rep(angle, length.out = N)
  if (length(rho) < N) 
    rho <- rep(rho, length.out = N)
  
  lngon <- mapply(polygon_regular, n = n, phase = phase,
                  SIMPLIFY = FALSE)
  vertices <- sapply(lngon, nrow)
  
  # browser()
  stretch_rotate_move <- function(p, size, rho, angle, x, y){
    central <- size * p %*% 
      diag(c(1/sqrt(rho), sqrt(rho))) %*%
      rbind(c(cos(angle), -sin(angle)), 
            c(sin(angle),  cos(angle)))
    
    list(x = unit(central[,1], size.units) + unit(x, position.units),
         y = unit(central[,2], size.units) + unit(y, position.units))
    
  }
  
  lxy <- mapply(stretch_rotate_move, p=lngon,
                size=size, rho=rho, angle=angle, 
                x=xv, y=yv,
                SIMPLIFY = FALSE)
  
  allx <- do.call("unit.c", lapply(lxy, "[[", 1))
  ally <- do.call("unit.c", lapply(lxy, "[[", 2))
  
  polygonGrob(allx, ally, id.lengths = vertices, gp = gp, ...)
  
}


#' @describeIn ngonGrob
#' @inheritParams ngonGrob
##' @export
grid.ngon <- function(...)
{
  grid.draw(ngonGrob(...))
}


#' @describeIn ngonGrob
#' @inheritParams ngonGrob
##' @export
ellipseGrob <- function(x, y, size = 5, 
                        angle = pi/4, rho = 1, n = 50, 
                        gp = gpar(colour = "black", fill = NA, 
                                  linejoin = "mitre"), ..., 
                        position.units = "npc", size.units="mm")  {
  
  ngonGrob(x, y, n = n , phase = 0, 
           size = size, angle = angle, rho = rho,
           gp = gp, position.units = position.units, 
           size.units = size.units, ...)
}


#' @describeIn ngonGrob
#' @inheritParams ngonGrob
##' @export
grid.ellipse <- function(...)
{
  grid.draw(ellipseGrob(...))
}