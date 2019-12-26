/// @description scp_bgm();
/*
var nbgm;
switch (room) {
case rmstage01a:
case rmstage01b:
case rmstage01c:
case rmboss1:
    nbgm = snd_Stage1;
    loop = 1;
    break;
case rmstage02a:
case rmstage02b:
    nbgm = snd_Stage2;
    loop = 1;
    break;
case rmstage03a:
case rmstage03b:
case rmstage03c:
    nbgm = snd_Stage3;
    loop = 1;
    break;
case rmboss03:
    nbgm = snd_Boss3;
    loop = 1;
    break;
case rmstage04a:
case rmstage04b:
    nbgm = snd_Stage4;
    loop = 1;
    break;
case rmboss04:
    nbgm = snd_Boss4;
    loop = 1;
    break;
case rmstage05a:
case rmstage05b:
case rmstage05c:
case rmstage05d:
    nbgm = snd_Stage5;
    loop = 1;
    break;
case rmstage06a:
case rmstage06b:
case rmstage06c:
case rmstage06d:
    nbgm = snd_Stage6;
    loop = 1;
    break;
case rmstageFinal0:
    nbgm = snd_Final0;
    loop = 0;
    break;
case rmteleport:
case rmteleport2:
    nbgm = snd_TpRoom;
    loop = 1;
    break;
case rmaltar:
    nbgm = snd_altarwind;
    loop = 1;
    break;
    
case test:
case rmboss1b:
case rmboss02:
case rmstage04d:
case rmstage05e:
case rmstage06e:
case rmsin2:
    nbgm=noone;
    break;
default:
    if perbgm!=noone && audio_is_playing(perbgm) audio_sound_gain(perbgm, 1, 0);
    exit;
}


if bgmset = true {
    if perbgm != nbgm || nbgm == noone {
        audio_stop_sound(perbgm);
        perbgm = nbgm;
    } if nbgm != noone && !audio_is_playing(perbgm) audio_play_sound(perbgm,0,loop);
    audio_sound_gain(perbgm, 1, 0);
} else {
    if perbgm != noone {
        audio_stop_sound(perbgm);
        perbgm = noone;
    }
}
