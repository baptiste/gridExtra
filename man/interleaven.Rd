\name{interleaven}
\alias{interleaven}
\title{interleaven}
\usage{
  interleaven(x = letters[1:3], y = 1:12, n = 4)
}
\arguments{
  \item{x}{vector}

  \item{y}{vector}

  \item{n}{integer}
}
\value{
  a vector
}
\description{
  mix two vectors
}
\examples{
interleaven(replicate(3, rectGrob(), simplify=FALSE), replicate(12, virtualGrob, simplify=FALSE), 4)
}
\seealso{
  \code{rep}, \code{ggplot2:interleave}

  Other grob userlevel: \code{\link{arcTextGrob}},
  \code{\link{barbedGrob}}, \code{\link{borderGrob}},
  \code{\link{colorstripGrob}}, \code{\link{ebimageGrob}},
  \code{\link{ellipseGrob}}, \code{\link{ngonGrob}},
  \code{\link{patternGrob}}, \code{\link{pixmapGrob}},
  \code{\link{rpatternGrob}}, \code{\link{stextGrob}},
  \code{\link{tableGrob}}, \code{\link{virtualGrob}}
}

