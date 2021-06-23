\name{rgl.sphgrid}
\alias{rgl.sphgrid}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Create a spherical plotting grid
}
\description{
Creates a spherical plotting grid, within which further points can be added. Useful for astronomical plotting in particular, where this becomes the celestial sphere.
}
\usage{
rgl.sphgrid(radius = 1, axis.val = TRUE, col.long = 'red', col.lat = 'blue',
  col.rad = 'darkgreen', col.axes = 'grey50', col.grid = 'grey', deggap = 15,
  longtype = "H", add = FALSE, radaxis = TRUE, radlab = 'Radius', col.radlab = 'black')
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{radius}{
The radial extent of the spherical grid.
}
  \item{axis.val}{
Logical; show numeric values on the spherical grid.
}
  \item{deggap}{
The attempted separation between sherical grid lines in degrees.
}
  \item{col.long}{
The colour for longitude axis value labels.
}
  \item{col.lat}{
The colour for latitude axis value labels.
}
  \item{col.rad}{
The colour for radius axis value labels.
}
  \item{col.axes}{
The colour for axes (i.e. grid line next to labels).
}
  \item{col.grid}{
The colour for grid lines.
}
  \item{longtype}{
Specifies if longitudes should be labelled in hours (H- default) or degrees (D).
}
  \item{add}{
Should the grid be added to the current plot, or if FALSE a new rgl device is launched.
}
  \item{radaxis}{
Logical determining whether the sphere radius vector is drawn and labeled (default is TRUE). Pretty labeling is used to choose the location of ticks and labels.
}
  \item{radlab}{
If 'radaxis' is TRUE then the 'radlab' parameter determines the name of the label.
}
  \item{col.radlab}{
Colour of the radius title.
}
}
\details{
This function should be called first, and can generally be used with only the declaration of radius to good effect.
}
\value{
No value, used for plotting side effect.
}

\author{
Aaron Robotham
}

\examples{
rgl.sphgrid()
}
\keyword{plot}
