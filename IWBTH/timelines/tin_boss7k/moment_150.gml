if t_i mod 2 == 0 {
    var i=instance_create(Me.x,448,obj_lasergener2);
    var i=instance_create(Me.x+64,448,obj_lasergener2);
    var i=instance_create(Me.x-64,448,obj_lasergener2);
    i.snd=1;
}
else {
    var i=instance_create(Me.x+32,448,obj_lasergener2);
    var i=instance_create(Me.x-32,448,obj_lasergener2);
    var i=instance_create(Me.x+96,448,obj_lasergener2);
    var i=instance_create(Me.x-96,448,obj_lasergener2);
    i.snd=1;
}

if t_i++<3 timeline_position-=45;
else {
    t_i=0;
}

