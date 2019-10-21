if en && t++ mod 8==0 {
    var dir, len, lx, ly;
    dir=irandom_range(0,359);
    len=irandom_range(24,48) * choose(-1,1);
    lx=lengthdir_x(len,dir);
    ly=lengthdir_y(len,dir);
    var i=instance_create(x+lx,y+ly,obj_spell);
}


speed=clamp(speed+movspd,minspd,maxspd);
image_angle+=angle_dir;
image_alpha+=min(image_alpha+0.02,1);



if life--<0 instance_destroy();

