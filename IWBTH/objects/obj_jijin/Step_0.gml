if t mod 150 < 50 {
    scp_shake(1,1,0);
}
else if t mod 150 == 50 {
    scp_shake(32,4,0);
    audio_play_sound(snd_Explode,0,0);
    djump = 0;
    
    var i=instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) div 2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.WView, 0 ) div 5 * 4,obj_charge);
    with(i) {
        ktime=20;
        image_blend=c_black;
        get_xscale=3;
        get_yscale=3;
        image_alpha=0.2;
    }
    with(Me) {
        djump = -1;
        vspeed = -10;
    }
}


t++;


