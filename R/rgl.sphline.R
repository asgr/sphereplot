rgl.sphline = function(long1, lat1, long2, lat2, radius=1, deg=TRUE, col='black', res=1000, ...){
  if(deg==FALSE){
    long1 = long1 * 180/pi
    lat1 = lat1 * 180/pi
    long2 = long2 * 180/pi
    lat2 = lat2 * 180/pi
  }
  
  if(long2 - long1 > 180){
    long2 = long2 - 360
  }
  if(long1 - long2 > 180){
    long1 = long1 - 360
  }
  u = sph2car(long1, lat1, 1)
  v = sph2car(long2, lat2, 1)
  
  CrossProd = c(
    + ((u[2] * v[3]) - (v[2] * u[3])), #i
    - ((u[1] * v[3]) - (v[1] * u[3])), #j
    + ((u[1] * v[2]) - (v[1] * u[2]))  #k
  )
  
  AngSep = asin(sqrt(CrossProd[1]^2 + CrossProd[2]^2 + CrossProd[3]^2)) * 180/pi
  
  PeakDec = atan2(sqrt(CrossProd[1]^2 + CrossProd[2]^2), CrossProd[3])
  CrossEq = atan2(CrossProd[2], CrossProd[1]) + pi/2# Eq crossing point
  
  rotdata = rotate3d(cbind(cos(seq(-pi, pi, len = res)), 0, sin(seq(-pi, pi, len = res))),
                     x = 1,
                     y = 0, 
                     z = 0,
                     angle = (pi/2 - PeakDec)
  )
  rotdata = rotate3d(rotdata, x = 0, y = 0, z = 1, angle = -CrossEq) * radius
  
  rotdata_sph = car2sph(rotdata)
  rotdata_sph[,1] = rotdata_sph[,1]
  rotdata_sph[rotdata_sph[,2] < -90, 2] = rotdata_sph[rotdata_sph[,2] < -90, 2] + 180
  rotdata_sph[rotdata_sph[,2] > 90, 2] = rotdata_sph[rotdata_sph[,2] > 90, 2] - 180
  
  sel_long = (rotdata_sph[,1] >= min(long1, long2) & rotdata_sph[,1] <= max(long1, long2)) | (rotdata_sph[,1] + 360 >= min(long1, long2) & rotdata_sph[,1] + 360 <= max(long1, long2))
  sel_lat = rotdata_sph[,2] >= min(lat1, lat2) & rotdata_sph[,2] <= max(lat1, lat2)
  
  segment = rotdata[sel_long & sel_lat,]
  
  lines3d(segment, aspect = TRUE, col = col, ...)
  
  return(invisible(list(great_circle=rotdata, segment=segment, CrossEq=CrossEq*180/pi, PeakDec=PeakDec*180/pi, AngSep=AngSep, CrossProd=CrossProd)))
}
