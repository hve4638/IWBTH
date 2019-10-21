/// @description particle
if EFFECT
with(sys_part){
    if ++prt[23]==0 event_user(0);
    part_system_depth(Sys[23],-15);
    part_emitter_region(Sys[23],emitter[23],other.x+16-6,other.x+16+6,other.y+16-6,other.y+16+6,ps_shape_ellipse,1);
    part_emitter_burst(Sys[23],emitter[23],particle[23],1);
}

///Teleport
if !On || 0<sleep-- exit;
if I==0 {
    with(obj_player) {
        frozen=true;
        setgrav=0;
        hspeed=0;
        vspeed=0;
    }
    with(sys_cam) {
        fade_get=0.03;
        fade_col=c_black;
    }
    cansave=0;
    persistent=1;
    
    if ROOM!=room audio_sound_gain(perbgm,0,1500);
}
else if 1<=I && I<30 {
    if instance_exists(obj_player) {
        if 8<point_distance(obj_player.x,obj_player.y,x+16,y+16) {
            obj_player.x+=sign(x+16-obj_player.x)*6;
            obj_player.y+=sign(y+16-obj_player.y)*6;
        } else {
            with(obj_player) instance_destroy();
        }
    }
    if I==29 EFFECT=false;
} else if I==30 {
    if ROOM!=room && perbgm!=noone {
        audio_stop_sound(perbgm);
        perbgm=noone;
    }
    
    instance_create(gotox,gotoy,obj_create_tpevent);
    room_goto(ROOM);
} else if I==31 {
    with(sys_cam) {
        fade_set=1;
        fade_get=-0.02;
        fade_col=c_black;
    }
    instance_destroy();
}


I++;

