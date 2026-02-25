# sphereplot (R package)

<!-- badges: start -->
![R-CMD-check](https://github.com/asgr/sphereplot/workflows/R-CMD-check/badge.svg)
<!-- badges: end -->

## Synopsis

Package containing tools for creating spherical coordinate system plots via extensions to **rgl**. Useful for astronomical plotting in particular, where the sphere becomes the celestial sphere.

## Installation

### Getting sphereplot

The **sphereplot** package is currently on CRAN, so should be easy to install via:

```R
install.packages('sphereplot')
```

If that does not work for some reason, source installation from GitHub should be easy:

```R
install.packages('remotes')
remotes::install_github("asgr/sphereplot")
library(sphereplot)
```

A few Mac people seem to have issues with the above due to the backend used to download files. A work around seems to be to either use devtools (which I do not use as the default since it has a few more dependencies, and is tricky to install on HPCs):

```R
install.packages('devtools')
devtools::install_github("asgr/sphereplot")
library(sphereplot)
```

Or try the following:

```R
Sys.setenv(R_REMOTES_NO_ERRORS_FROM_WARNINGS="true")
remotes::install_github("asgr/sphereplot")
```

I also have these options set by default in my .Rprofile, which seems to help with some of the remote install issues some people face:

```R
options(download.file.method = "libcurl")
options(repos="http://cran.rstudio.com/")
options(rpubs.upload.method = "internal")
```

If all of these do not work then the nuclear option is to download (or clone) the GitHub repo, cd to where the tar.gz file is and run in the **console** (or **Terminal** on Mac):

```console
R CMD install sphereplot_X.Y.Z.tar.gz
```

where X, Y and Z should be set as appropriate for the version downloaded (check the name of the file basically).

If none of the above works then you should consider burning your computer in sacrifice to the IO Gods. Then buy a newer *better* computer, and try all the above steps again.

Failing all of the above, please email me for help (or perhaps raise an Issue here, if it really does not seem like a local issue).

#### Package Dependencies

The above should also install the required packages. If you have trouble with this you can try installing the required packages manually first and then retry the installation for **sphereplot**:

```R
install.packages(c('rgl', 'checkmate')) # Required packages
install.packages('remotes')
remotes::install_github("asgr/sphereplot")
```

Assuming you have installed all of the packages that you need/want, you should now be able to load **sphereplot** within **R** with the usual:

```R
library(sphereplot)
```

## Code Example

The standard usage is to first call `rgl.sphgrid` to create the 3D spherical coordinate grid, then add points using `rgl.sphpoints`:

```R
library(sphereplot)

# Create a spherical grid (the celestial sphere)
rgl.sphgrid(longtype = 'H', radius = 1)

# Add 100 random uniformly distributed points
rgl.sphpoints(pointsphere(100, c(0, 360), c(-90, 90), c(0.5, 1)), deg = TRUE, col = 'red', cex = 2)

# Overlay the Galactic plane and Galactic centre
rgl.sphMW()
```

## Motivation

A package for creating interactive 3D spherical plots, primarily aimed at astronomical use cases such as displaying the celestial sphere. It provides a simple interface on top of **rgl** for plotting data in spherical coordinates (longitude, latitude, radius).

## Contributors

Aaron Robotham

## License

LGPL-3
