if !instance_exists(obj_player) return 0;

if ongod {
    /*var i=instance_create(Me.x,Me.y,obj_deaddebug);
    i.image_xscale=Me.xScale;
    i.image_yscale=Me.image_yscale;*/
    return 0;
}


if kid_inv return 0;
else {
    Me.hp_alp=1;
    kid_hp--;
    if 0<kid_hp {
        var t=sign(x-sprite_xoffset+sprite_width div 2 - Me.xprevious);
        if !t t=choose(1,-1);
        Me.reb_h=t*15;
        Me.vspeed=-4;
        
        with(obj_player) {
            var i=instance_create(x,y,obj_deaddebug);
            i.image_xscale=Me.xScale;
            i.image_yscale=Me.image_yscale;
        }
        
        audio_play_sound(snd_Death,0,0);
        kid_inv=50;
        return 0;
    }
}


if (instance_exists(obj_player)) {
    with (obj_player) {
        instance_create(x,y,obj_playerdead);
        var i=instance_create(x,y,obj_deaddebug);
        i.image_xscale=Me.xScale;
        i.image_yscale=Me.image_yscale;
        instance_destroy();
    }
    
    audio_play_sound(snd_Death,0,0);
    instance_create(400, 300, obj_GAMEOVER);
}
with(obj_bullet) {instance_destroy();}

scp_publicsave();
