if t_j<=60 {
    var lx, ly;
    lx=lengthdir_x(192,t_j) div 2;
    ly=lengthdir_y(192,t_j);
    
    var j=instance_create(x+lx div 10,y+ly div 10,obj_danmaku);
    with(j) {
        sprite_index=spr_spear;
        image_alpha=0.3;
        direction=point_direction(x,y,Me.x,Me.y);
        tag[0]=2;
        tag[1]=other.t_k;
        _x=x+lx;
        _y=y+ly;
        
        angledir=true;
    }
    scp_sfx(snd_ice1,3);
    t_j+=20;
    t_k++;
}

if t_i++<t_delay1 {
    with(obj_danmaku) {
        if tag[0]==2 {
            direction=point_direction(x,y,Me.x-64,Me.y);
            scp_follow(_x,_y,10);
        }
    }
    timeline_position--;
}

