if 1<c {
    if -32<=x+nx && x+nx<=room_width+32 {
        var i=instance_create(x+nx,ystart,obj_espikeblood);
        i.nx=nx; i.c=c-1; i.r=r;
    } else if r {
        var i=instance_create(x-nx,ystart,obj_espikeblood);
        i.nx=-nx; i.c=c-1; i.r=0;
    }
}

