var _h = lengthdir_x(speed,direction);
var _v = lengthdir_y(speed,direction);

if place_free(x+_h,y+_v) == false {
    instance_destroy();
}

