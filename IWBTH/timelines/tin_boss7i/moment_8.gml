t_i=0;
for(var i=0;i<room_width;i+=32) {
    var j=instance_create(i,448,obj_spike);
    with(j) {
        depth=10;
    }
}

