audio_play_sound(snd_BossHit,0,0);
with(other) {instance_destroy();}
HP-=DEAL*armor;


if HP<=0 instance_destroy();
hit=true;

