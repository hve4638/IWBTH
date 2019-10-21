var j=instance_create(x-47*image_xscale,y-16-31,obj_fireball);
with (j) {
    speed=7;
    direction=point_direction(x,y,obj_fakeplayer.x,obj_fakeplayer.y)+irandom_range(-45,45);
    alarm[0]=25;
    image_alpha=0.1;
    image_blend=c_red;
} audio_play_sound(snd_magic,0,0);

if ps++<6 {timeline_position-=5;}

