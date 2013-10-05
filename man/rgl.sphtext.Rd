\name{rgl.sphtext}
\alias{rgl.sphtext}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Add text to spherical plot
}
\description{
Adds generic text to a spherical coordinate plot.
}
\usage{
rgl.sphtext(long, lat, radius, text, deg = TRUE, col='black', ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{long}{
longitude values, can also contain a matrix of long, lat and radius (in that order).}
  \item{lat}{
latitude values.
}
  \item{radius}{
radius values.
}
  \item{text}{
text values to be plotted.
}
  \item{deg}{
Specifies if input is in degrees (default) or radians.
}
  \item{col}{
Specifies text colour.
}
  \item{\dots}{
Other arguments carried to points3d.
}
}
\details{
This function uses sph2car in conjunction with text3d to plot text on a spherical coordinate system.
}
\value{
No value, used for plotting side effect.
}
\author{
Aaron Robotham
}

\seealso{
\code{\link{rgl.sphgrid}},\code{\link{rgl.sphcirc}},\code{\link{rgl.sphpoints}},\code{\link{rgl.sphsun}},\code{\link{rgl.sphMW}},\code{\link{pointsphere}},\code{\link{sph2car}},\code{\link{car2sph}}
}

\examples{
rgl.sphgrid()
rgl.sphtext(40,50,0.5,'HI!',deg=TRUE,col='red',cex=2)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{plot3d}
\keyword{text}
\keyword{text3d}
