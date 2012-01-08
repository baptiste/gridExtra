\name{ngonGrob}
\alias{grid.ngon}
\alias{ngonGrob}
\title{ngonGrob}
\usage{
  ngonGrob(x, y, sides = 5, size = 1,
    angle = rep(pi/2, length(x)), ar = rep(1, length(x)),
    gp = gpar(colour = "grey50", fill = "grey90", linejoin = "mitre"),
    units.def = "native", units.size = "mm")
}
\arguments{
  \item{x}{x unit}

  \item{y}{y unit}

  \item{sides}{sides}

  \item{size}{size}

  \item{angle}{angle}

  \item{ar}{ar}

  \item{units.def}{units.def}

  \item{units.size}{units.size}

  \item{gp}{gpar}
}
\value{
  grob
}
\description{
  regular polygon grob
}
\examples{
pushViewport(dataViewport(0:1, 0:1, width=unit(2, "cm"), height=unit(2, "cm")))

xy <- polygon.regular(6, TRUE)
grid.ngon(0.5, 0.5, 6, 10, units.size="mm")
for(ii in 1:NROW(xy)){
 grid.ngon(xy[ii, 1]+0.5, xy[ii, 2]+0.5, 6, 10, units.size="mm")
}
upViewport()
}
\seealso{
  Other grob userlevel: \code{\link{arcTextGrob}},
  \code{\link{barbedGrob}}, \code{\link{borderGrob}},
  \code{\link{colorstripGrob}}, \code{\link{ebimageGrob}},
  \code{\link{ellipseGrob}}, \code{\link{interleaven}},
  \code{\link{patternGrob}}, \code{\link{pixmapGrob}},
  \code{\link{rpatternGrob}}, \code{\link{stextGrob}},
  \code{\link{tableGrob}}, \code{\link{virtualGrob}}
}

