if !t {t=1; exit;}
var pp=path_position;
if 0.3<pp && pp<0.8 part_system_depth(Sys,0);
else part_system_depth(Sys,-10);

if (0.87<pp || pp<=0.12) || (0.37<pp && pp<=0.62) path_speed+=0.05;
else path_speed-=0.05;
path_speed=clamp(path_speed,-3,-1);

part_emitter_region(Sys,emitter,x,x,y,y,ps_shape_ellipse,1);
part_emitter_burst(Sys,emitter,particle,1);

