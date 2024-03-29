\name{sph2car}
\alias{sph2car}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Transforms 3D spherical coordinates to cartesian coordinates
}
\description{
Transforms 3D spherical coordinates to cartesian coordinates. The user can choose to input the spherical coordinates in degrees or radians.
}
\usage{
sph2car(long, lat, radius = 1, deg = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{long}{
Longitude values, can also contain a matrix of long, lat and radius (in that order).
}
  \item{lat}{
Latitude values.
}
  \item{radius}{
Radius values.
}
  \item{deg}{
Specifies if input is in degrees (default) or radians.
}
}
\details{
This is a low level function that is used for plot transformations.
}
\value{
A data.frame is returned containing the columns x, y and z.
}

\author{
Aaron Robotham
}

\seealso{
\code{\link{rgl.sphgrid}},\code{\link{rgl.sphcirc}},\code{\link{rgl.sphpoints}},\code{\link{rgl.sphtext}},\code{\link{rgl.sphsun}},\code{\link{rgl.sphMW}},\code{\link{pointsphere}},\code{\link{car2sph}}
}

\examples{
print(sph2car(45,0,sqrt(2),deg=TRUE))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\concept{transform}
