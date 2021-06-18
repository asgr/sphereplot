rgl.sphtext = function(long,lat,radius,text,deg=TRUE,col='black',...){
  .skip()
  text3d(sph2car(long,lat,radius,deg=deg),texts=text,col=col,...)
  .draw()
}
