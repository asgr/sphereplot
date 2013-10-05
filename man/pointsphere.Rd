\name{pointsphere}
\alias{pointsphere}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Random sphere pointing
}
\description{
Randomly generates data points within a sphere that are uniformly distributed.
}
\usage{
pointsphere(N = 100, longlim = c(0, 360), latlim = c(-90, 90), rlim = c(0, 1))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{N}{
Number of random points.
}
  \item{longlim}{
Limits of longitude in degrees.
}
  \item{latlim}{
Limits of latitude in degrees.
}
  \item{rlim}{
Limits of radius.
}
}
\details{
This function randomly generates data points within a sphere that are uniformly distributed. 3D pointing is based in efficient inversion of random uniform distributions, rather than a Monte-Carlo approach.
}
\value{
Returns a data.frame comtaining the longitude, latitude and radius of the random points generated.
}

\author{
Aaron Robotham
}

\seealso{
\code{\link{rgl.sphgrid}},\code{\link{rgl.sphcirc}},\code{\link{rgl.sphpoints}},\code{\link{rgl.sphtext}},\code{\link{rgl.sphsun}},\code{\link{rgl.sphMW}},\code{\link{sph2car}},\code{\link{car2sph}}
}

\examples{
rgl.sphgrid()
rgl.sphpoints(pointsphere(100,c(0,90),c(0,45),c(0.25,0.8)),deg=TRUE)
}

\keyword{random}
