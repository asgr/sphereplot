rgl.sphpoints = function(long,lat,radius=1,deg=TRUE,col='black',...){
  .skip()
  points3d(sph2car(long,lat,radius,deg=deg),col=col,...)
  .draw()
}
