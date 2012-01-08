\name{patternGrob}
\alias{drawDetails.pattern}
\alias{grid.pattern}
\alias{heightDetails.pattern}
\alias{patternGrob}
\alias{segments.pattern}
\alias{widthDetails.pattern}
\title{patternGrob}
\usage{
  patternGrob(x = unit(0.5, "npc"), y = unit(0.5, "npc"),
    width = unit(1, "npc"), height = unit(1, "npc"),
    pattern = 2, orientation = 45,
    granularity = unit(5, "mm"), motif.col = "black",
    motif.fill = NULL, motif.alpha = 1, motif.cex = 1,
    pattern.offset = c(0, 0), default.units = "npc",
    clip = TRUE, gp = gpar(fill = NA), ...)
}
\arguments{
  \item{x}{x unit}

  \item{y}{y unit}

  \item{width}{width}

  \item{height}{height}

  \item{pattern}{integer}

  \item{orientation}{orientation}

  \item{granularity}{unimplemented}

  \item{motif.col}{motif.col}

  \item{motif.fill}{motif.fill}

  \item{motif.alpha}{motif.alpha}

  \item{motif.cex}{motif.cex}

  \item{pattern.offset}{pattern.offset}

  \item{default.units}{default.units}

  \item{clip}{clip}

  \item{gp}{gp}

  \item{...}{additional params to the grob}
}
\value{
  grob of class pattern
}
\description{
  pattern grob
}
\examples{
grid.pattern(x=seq(1/6, 5/6, length=6), width=unit(1/8,"npc"), height=unit(0.5,"npc"),
            motif.width=unit(10, "mm"),  pattern=c(1:6), orientation=45, motif.alpha=0.5,
            motif.cex=c(1, 0.5), motif.col=1:2, motif.fill=NA,
            gp=gpar(fill="blue", lwd=2, alpha=0.5),  clip=TRUE)
}
\seealso{
  Other grob userlevel: \code{\link{arcTextGrob}},
  \code{\link{barbedGrob}}, \code{\link{borderGrob}},
  \code{\link{colorstripGrob}}, \code{\link{ebimageGrob}},
  \code{\link{ellipseGrob}}, \code{\link{interleaven}},
  \code{\link{ngonGrob}}, \code{\link{pixmapGrob}},
  \code{\link{rpatternGrob}}, \code{\link{stextGrob}},
  \code{\link{tableGrob}}, \code{\link{virtualGrob}}
}

