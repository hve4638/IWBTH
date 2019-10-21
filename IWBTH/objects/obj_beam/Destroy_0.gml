if Del {
    var lx, ly;
    lx=x+lengthdir_x(10,image_angle);
    ly=y+lengthdir_x(10,image_angle);
    with(sys_part) {
        if ++prt[24]==0 event_user(0);
        part_emitter_region(Sys[24],emitter[24],lx-1,lx+1,ly-1,ly+1,ps_shape_ellipse,1);
        part_emitter_burst(Sys[24],emitter[24],particle[24],10);
    }
}

