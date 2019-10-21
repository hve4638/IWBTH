if onhealth && !inv {
    audio_play_sound(snd_BossHit,0,0);
    with(other) {instance_destroy();}
    if onshield && 0<SHIELD SHIELD-=DEAL*10;
    else {
        if 0<SHIELD HP-=DEAL;
        else HP-=DEAL*ARMOR*2;
    }
    
    if HP<=0 {
        scp_bosskill(4);
        audio_stop_sound(perbgm);
        
        ongod=true;
        cansave=false;
        
        var i=instance_create(1184,0,obj_teleport);
        with(i) {
            image_xscale=2;
            image_yscale=16;
            type=0; GOTO=rmstage04e;
        }
        with(inst_5449854B) instance_destroy(); //block
        onhealth=false;
        
        scp_timeline(tin_boss6_death);
    }
    
    if onshield && 0<SHIELD {
        if instance_exists(shd) {
            shd.x=x;
            shd.y=y+8;
            shd.image_alpha=0.5;
            shd.ktime=10;
        } else {
            shd=instance_create(x,y+8,obj_charge);
            shd.image_xscale=2; shd.image_yscale=2;
            shd.image_alpha=0.5; shd.image_blend=c_purple;
            shd.get_alpha=-0.05; shd.depth=-12;
            shd.ktime=10;
        }
    }
}

