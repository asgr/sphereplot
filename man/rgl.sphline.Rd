\name{rgl.sphline}
\alias{rgl.sphline}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Draw Great Circle Line Segment
}
\description{
Given two points on the sphere, this function will draw the connecting great circle minimum distance line connecting them.
}
\usage{
rgl.sphline(long1, lat1, long2, lat2, radius = 1, deg = TRUE, col = "black", res = 1000, ...)
rgl.sphlines(long, lat, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{long1}{
Numeric scalar; longitude of first location.
}
  \item{lat1}{
Numeric scalar; latitude of first location.
}
  \item{long2}{
Numeric scalar; longitude of second location.
}
  \item{lat2}{
Numeric scalar; latitude of second location.
}
  \item{long}{
Numeric vector; longitudes on plotting path.
}
  \item{lat}{
Numeric vector; latitudes  on plotting path.
}
  \item{radius}{
Numeric scalar; radius of segment to draw.
}
  \item{deg}{
Logical; specifies if input is in degrees (default) or radians.
}
  \item{col}{
Specifies line colour.
}
  \item{res}{
Numeric scalar; resolution of line to draw (how many elements in the total great circle). Only make this large if plotting points very close together, otherwise the default is generally high enough resolution.
}
  \item{\dots}{
Other arguments to pass to \code{\link{lines3d}}.
}
}
\details{
The main difference between \code{rgl.sphline} and \code{rgl.sphlines} is that the former takes scalar inputs but gives you the great outputs listed below, whilst \code{rgl.sphlines} can take vector inputs and plot complicated paths, but provides no return from the function.
}
\value{
\code{rgl.sphline} and \code{rgl.sphlines} are called for the side effect of plotting on the current sphere.

\code{rgl.sphline} also returns various diagnostic outputs:

\item{great_circle}{Cartesian coordinates of the full great circle.}
\item{segment}{Cartesian coordinates of the great circlen segment.}
\item{CrossEq}{Location where great circle crosses the equator.}
\item{PeakDec}{Peak declination / latitude of the great circle.}
\item{AngSep}{Angular separation of the two points in degrees.}
\item{CrossProd}{Three element cross product vector for the two input positions.}
}
\author{
Aaron Robotham
}

\seealso{
\code{\link{rgl.sphglobe}}
}
\examples{
rgl.sphglobe('world1')
rgl.sphline(20,30,40,60)
rgl.sphpoints(c(20,40), c(30,60), size=10)
rgl.sphline(340,-20,80,30)
rgl.sphpoints(c(340,80), c(-20,30), size=10)
rgl.sphline(30,40,80,-60)
rgl.sphpoints(c(30,80), c(40,-60), size=10)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
