ds_init();
scr_headhunter_motion();

nextspr = map_create();
nextspr[? spr_headhunter_idle] = spr_headhunter_idle;
nextspr[? spr_headhunter_walk] = spr_headhunter_walk;
nextspr[? spr_headhunter_sword_after] = spr_headhunter_idle;
nextspr[? spr_headhunter_jump_after] = spr_headhunter_idle;
nextspr[? spr_headhunter_rolling] = spr_headhunter_idle;
nextspr[? spr_headhunter_boom_after] = spr_headhunter_idle;
nextspr[? spr_headhunter_phase_laser] = spr_headhunter_laser;
nextspr[? spr_headhunter_phase_laserdown] = spr_headhunter_laser_down;
nextspr[? spr_headhunter_phase_laserdown2] = spr_empty;
nextspr[? spr_headhunter_phase_laser90_end] = spr_empty;
nextspr[? spr_headhunter_phase_laser180] = spr_headhunter_laser_180;
//nextspr[? spr_headhunter_phase_laser90] = spr_headhunter_laser_90;