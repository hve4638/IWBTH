if 0<sleep-- exit;
if ct++ mod 5 {
    var tt=random_range(0.5,0.9);
    image_xscale=tt;
    image_yscale=tt;
}

if lead {
    if !instance_exists(target) exit;
    var tempA=direction, tempB=point_direction(x,y,target.x,target.y);
    tempB-=tempA;
    if 180<tempB {tempB-=360;}
    if 3<tempB && tempB<180 {
        direction+=dir;
    } else if -3>tempB && -180<tempB {
        direction-=dir;
    }
} else {
    speed=tmp1; direction=tmp2;
    if !instance_exists(Tolead) {lead=true;}
    else {
        tmp1=Tolead.speed;
        tmp2=Tolead.direction;
    }
}

if BT direction=clamp(direction,220,320);
image_angle=direction;

if BT {
    if 448<y && !bg { bg=true;
        var i=noone;
        if irandom(1)
        i=instance_create(other.x,448,obj_charge);
        with(i) {
            image_blend=c_black
            image_xscale=0;
            image_yscale=0;
            image_angle=90;
            get_xscale=0.1;
            get_yscale=0.3;
            get_alpha=-0.2;
            ktime=10; depth=-9;
        }
    }
}



