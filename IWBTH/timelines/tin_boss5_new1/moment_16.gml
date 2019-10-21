if t_i<t_j {
    with(obj_danmaku) {
        if tag[0]==1 {
            if tag[1]==other.t_i {
                tag[0]=0;
                
                speed=15;
                direction=point_direction(x,y,Me.x,Me.y);
                scp_sfx(snd_bubble,3);
            }
        }
    }
    t_i++;
    timeline_position-=8;
}

