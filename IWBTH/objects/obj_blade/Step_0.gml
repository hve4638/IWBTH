speed+=movspd;
speed=clamp(speed,minspd,maxspd);

image_angle+=movang;

if life--==0 instance_destroy();

