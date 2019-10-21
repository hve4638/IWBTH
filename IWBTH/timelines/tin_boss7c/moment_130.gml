var i=instance_create(0,p_j,obj_laser);
with(i) {image_angle=0; ar=3; ad=2; depth=-20; image_index=1; image_blend=c_white;}
scp_shake(6,2,0);
audio_play_sound(snd_Explode3,0,0);

p_j=Me.y;
if p_i++<3 {timeline_position-=7;}

