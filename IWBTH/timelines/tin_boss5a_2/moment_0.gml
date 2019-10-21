var t_n=8;
for(var i=0;i<t_n;i++) {
    var lx, ly;
    lx=lengthdir_x(96,i*360/t_n);
    ly=lengthdir_y(96,i*360/t_n);
    var j=instance_create(x+lx,y+ly,obj_watergener);
    j.target=Me;
    j.fuse=15;
    j.number=35;
    j.n=12;
}

