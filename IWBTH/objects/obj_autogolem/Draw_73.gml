if !(0<sleep) {
    if type==2 {
        var L, R;
        L=clamp(t2_l,t2_s,t2_e);
        R=clamp(t2_r,t2_s,t2_e);
        if L!=R {
            draw_set_colour(c_red);
            for(i=L;i<=R;i++) {draw_line(i,448,x,y);}
        }
    }
}


