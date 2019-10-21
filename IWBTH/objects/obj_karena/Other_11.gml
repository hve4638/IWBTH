onhealth=true;
drawhp=0;
alarm[0]=50;

scp_timeline(tin_boss8_init);
init = false;
with(obj_save) {instance_destroy();}
if wuss {kid_mxhp=3; kid_hp=3;}


var i=instance_create(x,y,obj_charge);
with(i) {
    image_blend=c_black
    image_xscale=0;
    image_yscale=0;
    image_angle=90;
    get_xscale=1;
    get_yscale=1;
    get_alpha=-0.01;
    ktime=30; depth=-20;
}

