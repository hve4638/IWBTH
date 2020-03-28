ds_init();
scr_radiance_motion();

nextspr = map_create();
nextspr[? spr_radiance_idle] = spr_radiance_idle;
nextspr[? spr_radiance_focus] = spr_radiance_focus;
nextspr[? spr_radiance_turn] = spr_empty;
nextspr[? spr_radiance_turn2] = spr_radiance_idle;