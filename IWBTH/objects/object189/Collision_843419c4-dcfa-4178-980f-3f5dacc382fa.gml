if onhealth && !inv {
    audio_play_sound(snd_BossHit,0,0);
    with(other) {instance_destroy();}
    HP-=DEAL*ARMOR;
    
    if HP<=0 {
        scp_bosskill(4);
    
        scp_shake(12,20,1);
        audio_stop_sound(perbgm);
        audio_play_sound(snd_Explode2,0,0);
        
        var i=instance_create(x,y,obj_meteo); i.ep=1;
        var i=instance_create(x,y+60,obj_meteo); i.ep=1;
        
        ongod=true;
        cansave=false;
        
        var i=instance_create(1184,0,obj_teleport);
        with(i) {
            image_xscale=2;
            image_yscale=16;
            type=0; GOTO=rmstage04e;
        }
        with(inst_5449854B) instance_destroy(); //block
        
        y=436; image_index=1;
        follow=false;
        timeline_running=false;
        alarm[0]=-1; S=0; A=0;
        depth=-25; speed=0;
        phase=-1; ds=0; B=0;
        
        onhealth=false;
        
        scp_timeline(tin_boss6_death);
    }
    
    if phase==0 {
        if instance_exists(shd) {
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
    else if phase==3 && 0{
        if instance_exists(shd) {
            shd.image_alpha=0.7;
            shd.ktime=10;
        } else {
            shd=instance_create(x,y+8,obj_charge);
            shd.image_xscale=2; shd.image_yscale=2;
            shd.image_alpha=0.7; shd.image_blend=c_blue;
            shd.get_alpha=-0.05; shd.depth=-12;
            shd.ktime=10;
        }
    }
}

