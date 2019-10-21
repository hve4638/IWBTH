with(obj_light) bright=192;
if Me.y<64 {
    with(obj_player) {
        djump=0;
        vspeed=8;
    }
} else {
    scp_play(snd_StageF3,1);
    with(obj_water) image_alpha=0.5;
}

global.swtch=0;