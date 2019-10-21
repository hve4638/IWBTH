if !instance_exists(obj_player) exit;

if 30<hp {
    k=irandom_range(0,23);
    var i=instance_create(832+32*k,448,obj_waring);
    i.alarm[0]=80;
    i.image_single=0;
    alarm[1]=80;
} else {
    var i=instance_create(1184,400,obj_waring);
    i.alarm[0]=80;
    i.image_single=0;
    alarm[3]=80;
}

