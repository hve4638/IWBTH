with(obj_light) bright=192;
with(obj_gravity_right) hspd=2;
with(obj_gravity_left) hspd=-2;


with(obj_player) {
    if 32<x {
        with(inst_228E0D1D) instance_destroy();
        scp_play(snd_StageF2,1);
    }
}