\name{rgl.sphsun}
\alias{rgl.sphsun}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot ecliptic + Sun
}
\description{
This function overplots the ecliptic plane on the default Equatorial coordinates, and optionally will add the Sun either for a desired date, or for today.
}
\usage{
rgl.sphsun(Ydate = c(3, 21), radius = 1, col = "yellow", type = "s", sunrad = 0.02,
addeclip = TRUE, addsun=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Ydate}{
The date for the location of the Sun on the spherical grid. Vector in c(M,D) format. If set to 'get' then the function will return the Sun's location for today.
}
  \item{radius}{
The radius at which to draw the ecliptic plane and Sun.
}
  \item{col}{
The colour of the ecliptic line and for the Sun.
}
  \item{type}{
Rgl plot type for the Sun, default is to draw it as a 3D sphere, i.e. type 's'.
}
  \item{sunrad}{
The radius of the Sun if plotted as a sphere.
}
  \item{addeclip}{
Should the ecliptic plane be drawn.
}
  \item{addsun}{
Should the location of the Sun be plotted.
}
}
\value{
No value, used for plotting side effect.
}

\author{
Aaron Robotham
}

\seealso{
\code{\link{rgl.sphgrid}},\code{\link{rgl.sphcirc}},\code{\link{rgl.sphpoints}},\code{\link{rgl.sphtext}},\code{\link{rgl.sphMW}},\code{\link{pointsphere}},\code{\link{sph2car}},\code{\link{car2sph}}
}

\examples{
rgl.sphgrid()
rgl.sphsun()

rgl.sphgrid()
rgl.sphsun('get',radius=2,col='red')

open3d()
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{sun}

