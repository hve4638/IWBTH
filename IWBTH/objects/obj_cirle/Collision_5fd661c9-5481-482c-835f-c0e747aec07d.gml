/*
var OTHER=other.id;
with(obj_aqua) 
if onhealth && !inv && 20<HP {
    audio_play_sound(snd_BossHit,0,0);
    with(OTHER) {
        with(sys_part) {
            if ++prt[24]==0 event_user(0);
            part_emitter_region(Sys[24],emitter[24],other.x-1,other.x+1,other.y-1,other.y+1,ps_shape_ellipse,1);
            part_emitter_burst(Sys[24],emitter[24],particle[24],10);
        }
        instance_destroy();
    }
    HP-=DEAL*ARMOR;
    
    if HP<=0 && timeline_index=tin_boss5L {
        timeline_running=0;
    }
}

/* */
/*  */
