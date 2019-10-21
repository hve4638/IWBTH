var i=instance_create(p_j,608,obj_laser);
with(i) {image_angle=90; ar=3; ad=2; depth=-20; image_index=1; image_blend=c_white;}
scp_shake(6,2,0);
audio_play_sound(snd_Explode3,0,0);

p_j=Me.x;
if p_i++<6 {timeline_position-=5;}
else if 2<phase {
    timeline_position=100;
    p_i=0; p_j=0;
}

