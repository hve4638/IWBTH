onlyexist
ds_init();

nextspr = map_create();
nextspr[? spr_providience_attack10] = spr_providience_ready11;
nextspr[? spr_providience_attack11] = spr_providience_ready10;
nextspr[? spr_providience_attack20] = no;
nextspr[? spr_providience_down] = no;
nextspr[? spr_providience_up] = no;
nextspr[? spr_providience_attack30] = spr_providience_ready31;
nextspr[? spr_providience_seat0] = spr_providience_seat1;

dealspr = map_create();
dealspr[? spr_providience_attack00] = spr_mask_providience_attack00;
dealspr[? spr_providience_attack10] = spr_mask_providience_attack10;
dealspr[? spr_providience_attack11] = spr_mask_providience_attack11;
dealspr[? spr_providience_attack20] = spr_mask_providience_attack20;
dealspr[? spr_providience_attack30] = spr_mask_providience_attack30;

scr_providience_motion();