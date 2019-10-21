/// @description scp_play(soundid,loop);
/// @param soundid
/// @param loop
if perbgm!=argument0 && audio_is_playing(perbgm) audio_stop_sound(perbgm);
perbgm=argument0;
if bgmset = true {
    if !audio_is_playing(perbgm) audio_play_sound(perbgm,0,argument1);
    audio_sound_gain(perbgm, 1, 0);
}
