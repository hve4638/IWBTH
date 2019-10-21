image_angle+=movang;
if mouse_check_button(mb_right) {x=mouse_x; y=mouse_y;}

if instance_exists(target) {
    if i++ mod 5 == 0 {
        var v, h;
        h=(Me.x-x);
        v=(Me.y-y);
        if sign(h)!=sign(hspeed) h/=50; else h/=90;
        if sign(v)!=sign(vspeed) v/=50; else v/=90;
        hspeed+=h;
        vspeed+=v;
    }
} else {
    hspeed+=sign(hspeed)*0.1;
    vspeed+=sign(vspeed)*0.1;
}

hspeed=clamp(hspeed,-14,14);
vspeed=clamp(vspeed,-14,14);
if 1<image_alpha {image_alpha=1;}
else if image_alpha<0 {instance_destroy();}

