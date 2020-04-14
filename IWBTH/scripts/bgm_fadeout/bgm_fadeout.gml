///@argu time
var t = argument[0];

audio_sound_gain(bgm_p, 0.0, t);

bgm_p = noone;
bgm_ind = noone;
bgm_faded = bgm_p;
bgm_fadetime = t;