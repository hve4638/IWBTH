if target==noone exit;
direction=point_direction(x,y,target.x,target.y);
speed+=0.3;
image_alpha+=movalp;

if point_distance(x,y,target.x,target.y)<speed instance_destroy();

