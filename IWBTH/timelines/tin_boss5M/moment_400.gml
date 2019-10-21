var t_n=14;
for(var i=0;i<t_n;i++) {
    var lx, ly;
    lx=lengthdir_x(96,i*360/t_n);
    ly=lengthdir_y(96,i*360/t_n);
    var j=instance_create(608+lx,352+ly,obj_watergener);
    j.target=Me;
    j.fuse=90;
    j.number=30;
    j.n=10;
}

