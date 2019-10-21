if t_i++<t_delay1 {
    with(obj_danmaku) {
        if tag[0]==2 {
            direction=point_direction(x,y,Me.x-64,Me.y);
            scp_follow(_x,_y,10);
        }
    }
    timeline_position--;
}

