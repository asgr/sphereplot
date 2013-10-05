\name{rgl.sphMW}
\alias{rgl.sphMW}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot Galactic plane + Galactic centre
}
\description{
This function overplots the Galactic plane on the default Equatorial coordinates, and optionally will add the Galactic centre.
}
\usage{
rgl.sphMW(radius = 1, col = "purple", type = "s", MWcenrad = 0.02, addMWplane = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{radius}{
The radius at which to draw the Galactic plane and Galactic centre.
}
  \item{col}{
The colour of the Galactic plane line and the Galactic centre.
}
  \item{type}{
Rgl plot type for the Galactic centre, default is to draw it as a 3D sphere, i.e. type 's'.
}
  \item{MWcenrad}{
The radius of the Galactic centre if plotted as a sphere.
}
  \item{addMWplane}{
Should the Galactic plane be drawn.
}
}

\value{
No value, used for plotting side effect.
}

\author{
Aaron Robotham
}

\seealso{
\code{\link{rgl.sphgrid}},\code{\link{rgl.sphcirc}},\code{\link{rgl.sphpoints}},\code{\link{rgl.sphtext}},\code{\link{rgl.sphsun}},\code{\link{pointsphere}},\code{\link{sph2car}},\code{\link{car2sph}}
}

\examples{
rgl.sphgrid()
rgl.sphMW()
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{galactic}
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
