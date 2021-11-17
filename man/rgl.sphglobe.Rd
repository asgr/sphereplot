\name{rgl.sphglobe}
\alias{rgl.sphglobe}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Create a World, Night Sky or CMB Globe
}
\description{
Plots a background map of either the World (our Earth), night sky, or the Planck CMB map. This is nice for certain visualisations of the astronomical locations, and also plotting the world. 
}
\usage{
rgl.sphglobe(type = "sky1", radius = 1, res = 100, alpha = 0.99999, grid = TRUE,
  lit = FALSE, texture = NULL, longshift = 0, longtype = 'D', ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{type}{
Character scalar; used if \option{texture} is NULL. One of: sky1 (low res) / sky2 (high res) / world1 (Light) / world2 (Dark) / world3 (simple) / cmb_gal (Planck in Galactic) / cmb_eq (Planck in Equatorial).
}
  \item{radius}{
Numeric scalar; radius to make the globe. If set to 'auto' it will be 1 for sky1 / sky2; 6371 for world1 / world2 (Earth radius in km); 13.8 for CMB (age of the Universe in Gyrs).
}
  \item{res}{
Numeric scalar; resolution of the globe (default should usually be fine).
}
  \item{alpha}{
Numeric scalar; transparency of the globe. Setting to 1 slows down the rendering for some reason.
}
  \item{grid}{
Logical; show coordinate grid?
}
  \item{lit}{
Logical; illuminate the globe?
}
  \item{texture}{
Character scalar; path to a texture to wrap onto the globe. This needs to be a rectangular projection to display correctly. 
}
  \item{longshift}{
Shift to make to the texture in degrees along the longitude dimension. Many images are centred at either 0 or 180, where the default of 0 assumes 0 degrees longitude is at the centre of the texture. Only relevant if user provides input to \option{texture}.   
}
  \item{longtype}{
Specifies if longitudes should be labelled in hours (H- default) or degrees (D). See \code{\link{rgl.sphgrid}}.
}
  \item{\dots}{
Extra arguments for \code{\link{rgl.sphgrid}}.
}
}
\details{
Run for the side effect of generating a pretty globe to plot on top of.

The sky and World images are in the equatorial system, but I can only find Planck maps using a Galactic projection, so this is not in equatorial! But for giving the general impression of the CMB background, this might not matter.

All images were found online under open licenses. In particular the sky images were provided by NASA.
}
\value{
Run for the side effect of generating a pretty globe to plot on top of.
}
\author{
Aaron Robotham
}

\seealso{
\code{\link{rgl.sphgrid}}, \code{\link{rgl.sphline}}
}
\examples{
rgl.sphglobe('world1')
rgl.sphglobe('world2')
rgl.sphglobe('world3')
rgl.sphglobe('sky1')
rgl.sphglobe('sky2')
rgl.sphglobe('cmb')
}
