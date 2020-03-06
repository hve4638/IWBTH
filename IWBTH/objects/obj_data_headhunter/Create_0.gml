ds_init();
scr_headhunter_motion();

nextspr = map_create();
nextspr[? spr_headhunter_idle] = spr_headhunter_idle;
nextspr[? spr_headhunter_walk] = spr_headhunter_walk;
nextspr[? spr_headhunter_sword_after] = spr_headhunter_idle;
nextspr[? spr_headhunter_jump_after] = spr_headhunter_idle;
nextspr[? spr_headhunter_rolling] = spr_headhunter_idle;