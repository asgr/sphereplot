rgl.sphglobe = function(type = 'sky1', radius=1, res=100, alpha=0.99999, grid=TRUE, lit=FALSE, texture=NULL, ...){
  
  if(is.null(texture)){
    type = tolower(type)
    
    if(type=='sky1'){
      longtype = 'D'
      if(radius=='auto'){
        radius = 1
      }
      texture = system.file("extdata", 'sky1.png', package="sphereplot")
    }else if(type=='sky2'){
      longtype = 'D'
      if(radius=='auto'){
        radius = 1
      }
      texture = system.file("extdata", 'sky2.png', package="sphereplot")
    }else if(type=='world1' | type=='earth1'){
      longtype = 'D'
      if(radius=='auto'){
        radius = 6371
      }
      texture = system.file("extdata", 'world1.png', package="sphereplot")
    }else if(type=='world2' | type=='earth2'){
      longtype = 'D'
      if(radius=='auto'){
        radius = 6371
      }
      texture = system.file("extdata", 'world2.png', package="sphereplot")
    }else if(type=='cmb' | type=='planck'){
      longtype = 'H'
      if(radius=='auto'){
        radius = 13.8
      }
      texture = system.file("extdata", 'cmb.png', package="sphereplot")
    }
  }
  
  long = seq(-180, 180, len=res)*pi/180
  lat = seq(90,-90, len=res)*pi/180

  # if(type=='cmb'){
  #   RADec = .glactc(gl=long, gb=lat, j=2, year=2000, degree=TRUE)
  #   long = RADec$ra
  #   lat = RADec$dec
  # }
  
  longmat = matrix(long, res, res)
  latmat = matrix(lat, res, res, byrow=TRUE)
  
  x = radius*cos(latmat)*cos(longmat)
  y = radius*cos(latmat)*sin(longmat)
  z = radius*sin(latmat)
  
  if(grid){
    rgl.sphgrid(radius=radius, longtype=longtype, ...)
  }
  
  surface3d(x, y, z,
            col='white',
            texture=texture,
            axes=FALSE, box=FALSE,
            xlab="", ylab="", zlab="",
            normal_x=x, normal_y=y, normal_z=z,
            textype='rgb', alpha=alpha, lit=lit, add=grid) #Change 'alpha' to make it transparent and 'lit' adds a lighting point so the shading is non-flat, the other stuff should probably be left as is. There are a whole bunch of options in rgl.material should you want to explore.
}