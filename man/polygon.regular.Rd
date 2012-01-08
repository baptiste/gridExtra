\name{polygon.regular}
\alias{polygon.regular}
\title{polygon.regular}
\usage{
  polygon.regular(sides = 4, scale.area = TRUE,
    star = FALSE)
}
\arguments{
  \item{sides}{int}

  \item{scale.area}{logical}

  \item{star}{logical}
}
\value{
  a data.frame
}
\description{
  compute vertices of a polygon
}
\examples{
polygon.regular(5)
}
\references{
  ngon from the 'maptree' package
}
\seealso{
  \code{star}
}

