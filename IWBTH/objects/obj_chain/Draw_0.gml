var dis=point_distance(x,y,xstart,ystart);
var dir=point_direction(x,y,xstart,ystart);
for(var i=0;i<dis-20;i+=60) {
    var lx, ly;
    lx=lengthdir_x(i,dir);
    ly=lengthdir_y(i,dir);
    draw_sprite_ext(spr_chain,1,x+lx,y+ly,1,1,dir,c_white,image_alpha);
}

image_angle=dir+180;
draw_self();

