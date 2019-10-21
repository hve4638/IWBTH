var dir=irandom_range(0,359);
var t_n=5;
for(var i=0;i<t_n;i++) {
    var lx, ly;
    lx=lengthdir_x(96,dir+i*360/t_n);
    ly=lengthdir_y(96,dir+i*360/t_n);
    var j=instance_create(x+lx,y+ly,obj_watergener);
    j.image_index=2;
    j.target=Me;
    j.fuse=50;
    j.number=30;
    j.n=16;
}

