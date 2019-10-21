var dir, dis;
dir=point_direction(x,y,Me.x,Me.y);
dis=point_distance(x,y,Me.x,Me.y);
for(var i=t_i*8;i<124;i++) {
    var lx, ly;
    lx=x+lengthdir_x(dis*(i/124),dir);
    ly=y+lengthdir_y(dis*(i/124),dir);
    with(sys_part) {
        if ++prt[24]==0 event_user(0);
        part_system_depth(Sys[24],-10);
        part_emitter_region(Sys[24],emitter[24],lx,lx,ly,ly,ps_shape_ellipse,1);
        part_emitter_burst(Sys[24],emitter[24],particle[24],15);
    }
    
    if t_i*8==i {
        with(sys_part) {
            if ++prt[24]==0 event_user(0);
            part_system_depth(Sys[24],-10);
            part_emitter_region(Sys[24],emitter[24],lx-24,lx+24,ly-24,ly+24,ps_shape_ellipse,1);
            part_emitter_burst(Sys[24],emitter[24],particle[24],500);
        }    
    }
}


if t_i++ < 128/8 {
    timeline_position--;
} else t_i=0;

