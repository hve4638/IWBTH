with(collision_line(x,y,xstart,ystart,obj_player,1,0)) scp_kill();
speed=clamp(speed+movspd,minspd,maxspd);

var t_u, t_d, t_l, t_r;
t_u=(y<-32) && b_up;
t_d=room_height+32 < y && b_down;
t_l=x<-32 && b_left;
t_r=room_width+32<x && b_right;


if 0<speed && (t_u || t_d || t_r || t_l) {
    speed=0; movspd=0;
    scp_shake(6,2,0);
}

