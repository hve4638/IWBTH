/*var i=instance_create(x+irandom_range(-128,128),y+irandom_range(-160,32),obj_bloodball);
with(i) {
    direction=point_direction(x,y,Me.x,Me.y);
    movspd=0.5; maxspd=12; sleep=50;
}*/
var i=instance_create(x,y-32,obj_pwball_red);
i.tox=x+irandom_range(-96,96);
i.toy=y+irandom_range(-128,-64);

audio_play_sound(snd_magic2,0,0);

if instance_exists(obj_keycontrol2) {
    timeline_position-=35;
} else image_alpha=1;

/* */
/*  */
