if target==noone exit;
direction=point_direction(x,y,target.x,target.y);
speed+=0.2;
speed=min(speed,13.5);

var size = point_distance(x,y,target.x,target.y)/500 * 0.35 + 0.65;
image_xscale = size;
image_yscale = size;

if point_distance(x,y,target.x,target.y)<speed/2 instance_destroy();
if i++ mod 3 == 0 t=random_range(-0.3,0.3);

