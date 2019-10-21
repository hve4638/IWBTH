var i=instance_create(0,0,obj_water);
with(i) {image_xscale=1000; image_yscale=1000; depth=-20; image_alpha=0.5;}


if perbgm==snd_Boss3 {
    audio_stop_sound(perbgm);
    perbgm=noone;
}

with(Me) y-=1;