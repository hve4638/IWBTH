ds_init();
scr_headhunter_motion();

nextspr = map_create();
nextspr[? spr_headhunter_idle] = spr_headhunter_idle;
nextspr[? spr_headhunter_walk] = spr_headhunter_walk;