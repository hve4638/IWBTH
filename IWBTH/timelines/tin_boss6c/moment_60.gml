if 1<phase {
    var i=instance_create(room_width,448,obj_espike);
    i.nx=-32;
    var i=instance_create(0,448,obj_espike);
    i.nx=32;
} else {
    var i=instance_create(x-16,448,obj_espike);
    i.nx=-32;
    var i=instance_create(x+16,448,obj_espike);
    i.nx=32;
}

scp_shake(3,60,0);
ds=0;

