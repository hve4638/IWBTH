life_create(500);

hspd = 0;
vspd = 0;
hspeed = -6;

image_index = 1;
image_speed = 0;
image_xscale = 300;
image_yscale = 5;
image_angle = -90;

time_idx = irandom(50);
sndid = audio_play_sound(snd_radiance_laserloop, 0, 1);
audio_sound_gain(sndid, 0.4, 0);