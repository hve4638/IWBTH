var dir=choose(0,180)
var t_n=3;
for(var i=0;i<t_n;i++) {
    var lx, ly;
    lx=lengthdir_x(48,dir+i*360/t_n);
    ly=lengthdir_y(48,dir+i*360/t_n);
    var j=instance_create(Me.x+lx,Me.y+ly,obj_beamgener);
    j.target=Me;
    j.fuse=100;
    j.number=1;
    j.n=13;
}


if t_i++ < 8 {
    timeline_position-=30;
} else {
    t_i=0;
}

