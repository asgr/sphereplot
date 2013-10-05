\name{rgl.sphpoints}
\alias{rgl.sphpoints}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Add points to spherical plots
}
\description{
This function allows the native plotting of spherical coordinates (in degrees of radians) and is expected to be used in conjunction with rgl.sphgrid, which produces the spherical grid.
}
\usage{
rgl.sphpoints(long, lat, radius, deg = TRUE,col='black', ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{long}{
longitude values, can also contain a matrix of long, lat and radius (in that order).
}
  \item{lat}{
latitude values.
}
  \item{radius}{
radius values.
}
  \item{deg}{
Specifies if input is in degrees (default) or radians.
}
  \item{col}{
Specifies point colour.
}
  \item{\dots}{
Other arguments carried to points3d.
}
}
\details{
This function uses sph2car in conjunction with points3d to plot points on a spherical coordinate system.
}
\value{
No value, used for plotting side effect.
}

\author{
Aaron Robotham
}

\seealso{
\code{\link{rgl.sphgrid}},\code{\link{rgl.sphcirc}},\code{\link{rgl.sphpoints}},\code{\link{rgl.sphtext}},\code{\link{rgl.sphsun}},\code{\link{rgl.sphMW}},\code{\link{pointsphere}},\code{\link{sph2car}},\code{\link{car2sph}}
}

\examples{
rgl.sphgrid()
rgl.sphpoints(40,50,0.5,deg=TRUE,col='red',cex=2)
}
\keyword{plot3d}
\keyword{points}
\keyword{points3d}
