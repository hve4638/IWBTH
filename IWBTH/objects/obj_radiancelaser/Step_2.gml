x += hspd;
y += vspd;

time_idx++;

screenshake(1, 2);

if x < -256 || x > room_width + 256
{
	//soundfadeout(snd_radiance_laserloop, 100);
	audio_stop_sound(sndid);
	instance_destroy();
}