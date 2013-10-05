\name{rgl.sphcirc}
\alias{rgl.sphcirc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Great circle generator
}
\description{
Function to generate a new great circle with arbitrary inclinations and radius.
}
\usage{
rgl.sphcirc(CrossEq = 0, PeakDec = 0, radius = 1, deg = TRUE,
col = "black", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{CrossEq}{
The right ascension where the new circle crosses the equator. This should be the corssing before the Declination values of the new great circle become positive.
}
  \item{PeakDec}{
The peak declination the new great circle will reach.
}
  \item{radius}{
The radius of the new great circle.
}
  \item{deg}{
Specifies if input is in degrees (default) or radians.
}
  \item{col}{
The colour of the new great circle line.
}
  \item{\dots}{
Other arguments carried to lines3d.
}
}
\details{
See \code{\link{rgl.sphsun}} and \code{\link{rgl.sphMW}} for examples of rgl.sphcirc in use.
}

\value{
No value, used for plotting side effect.
}
\author{
Aaron Robotham
}

\seealso{
\code{\link{rgl.sphgrid}},\code{\link{rgl.sphpoints}},\code{\link{rgl.sphtext}},\code{\link{rgl.sphsun}},\code{\link{rgl.sphMW}},\code{\link{pointsphere}},\code{\link{sph2car}},\code{\link{car2sph}}
}
\examples{

rgl.sphgrid()
rgl.sphcirc(radius=0.5,col='blue')

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{circle}

