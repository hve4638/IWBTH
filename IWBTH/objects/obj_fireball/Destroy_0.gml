if !Del exit;
audio_play_sound(snd_blast,0,0);
scp_shake(4,2,0);
with(sys_part) {
    if ++prt[14]==0 event_user(0);
    part_type_color1(particle[14],16777215);
    part_type_blend(particle[14],1);
    part_emitter_region(Sys[14],emitter[14],other.x,other.x,other.y,other.y,ps_shape_ellipse,1);
    part_emitter_burst(Sys[14],emitter[14],particle[14],30);
}

