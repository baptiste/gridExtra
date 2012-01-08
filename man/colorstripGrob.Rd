\name{colorstripGrob}
\alias{colorstripGrob}
\alias{grid.colorstrip}
\title{colorstrip}
\usage{
  colorstripGrob(fill = 1:3, colour = fill, draw = TRUE,
    raster = FALSE,
    direction = c("vertical", "horizontal"))
}
\arguments{
  \item{fill}{vector of colours}

  \item{colour}{vector of colours}

  \item{draw}{logical}

  \item{direction}{direction (horizontal or vertical)}

  \item{raster}{logical, use grid.raster (with
  interpolation)}
}
\value{
  a grob
}
\description{
  strip of colors
}
\examples{
colorstripGrob(c("#E41A1C", "#377EB8", "#4DAF4A"))
}
\seealso{
  \code{grid.rect}

  Other grob userlevel: \code{\link{arcTextGrob}},
  \code{\link{barbedGrob}}, \code{\link{borderGrob}},
  \code{\link{ebimageGrob}}, \code{\link{ellipseGrob}},
  \code{\link{interleaven}}, \code{\link{ngonGrob}},
  \code{\link{patternGrob}}, \code{\link{pixmapGrob}},
  \code{\link{rpatternGrob}}, \code{\link{stextGrob}},
  \code{\link{tableGrob}}, \code{\link{virtualGrob}}
}

