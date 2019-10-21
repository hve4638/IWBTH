var lx, ly, dir, len, tx, ty;
dir=90+t_j; len=180;
lx=t_x+lengthdir_x(len,dir);
ly=t_y+lengthdir_y(len,dir);
var j=instance_create(lx,ly,obj_danmaku);
with(j) {
    sprite_index=spr_waterball;
    movalp=0.01; maxalp=0.15;
    image_alpha=0; image_index=1;
    isout=false;
    image_xscale=1.2;
    image_yscale=1.2;
    
    tag[0]=2; tag[1]=100;
    angledir=true;
    direction=point_direction(x,y,other.t_x,other.t_y);
    minspd=-10; maxspd=16;
}


t_i++; t_j+=20;
if t_i<20 timeline_position-=5;
else if t_i<50 timeline_position-=4;
else if t_i<55 timeline_position-=3;

