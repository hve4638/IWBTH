scp_shake(50,10,1);
audio_play_sound(snd_Explode,0,0);

var i=instance_create(x,y,obj_charge);
with(i) {
    ktime=20;
    image_blend=c_black;
    get_xscale=1;
    get_yscale=1;
}

