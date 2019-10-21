if angledir image_angle=direction;
speed=clamp(speed+movspd,minspd,maxspd);
image_alpha=clamp(image_alpha+movalp,minalp,maxalp);

if life--==0 instance_destroy();

