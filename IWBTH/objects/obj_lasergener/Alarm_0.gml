var i=instance_create(x+rx,y+ry,obj_laser);
i.image_angle=dir;
i.ar=ar; i.ad=ad;

i=instance_create(x+rx,y+ry,obj_laser);
i.image_angle=dir+180;
i.ar=ar; i.ad=ad;

dir+=angle;
rx+=gx; ry+=gy;
audio_play_sound(snd_blast,0,0);

scp_shake(8,5,0);

if --life<0 instance_destroy();
else alarm[0]=arm;

