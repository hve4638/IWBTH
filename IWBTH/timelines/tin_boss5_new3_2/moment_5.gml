if t_l<t_k {
    with(obj_danmaku) {
        if tag[0]==2 && tag[1]==other.t_l {
            tag[0]=0;
            speed=20;
        }
    }
    t_l++;
    timeline_position--;
} else event_user(0);

