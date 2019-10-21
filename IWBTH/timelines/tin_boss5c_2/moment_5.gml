var dir, dis;
dir=point_direction(x,y,Me.x,Me.y);
dis=distance_to_point(Me.x,Me.y)
for(var i=1;i<128;i++) {
    var lx, ly;
    lx=x+lengthdir_x(dis*(i/124),dir);
    ly=y+lengthdir_y(dis*(i/124),dir);
    with(sys_part) {
        if ++prt[24]==0 event_user(0);
        part_system_depth(Sys[24],-10);
        part_emitter_region(Sys[24],emitter[24],lx,lx,ly,ly,ps_shape_ellipse,1);
        part_emitter_burst(Sys[24],emitter[24],particle[24],10);
    }
}

