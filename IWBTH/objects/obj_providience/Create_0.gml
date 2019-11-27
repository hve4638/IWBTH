tmp = ds_list_create();
ds_list_add(tmp, spr_providience_idle);
ds_list_add(tmp, spr_providience_idle2);
ds_list_add(tmp, spr_providience_attack);
ds_list_add(tmp, spr_providience_attack2);
ds_list_add(tmp, spr_providience_attack3);
ds_list_add(tmp, spr_providience_attack4);
ds_list_add(tmp, spr_providience_move);
ds_list_add(tmp, spr_providience_dash);
ds_list_add(tmp, spr_providience_seat);
ds_list_add(tmp, spr_providience_up);
ds_list_add(tmp, spr_providience_down);
ds_list_add(tmp, spr_providience_phase1);
ds_list_add(tmp, spr_providience_phase2);
ds_list_add(tmp, spr_providience_phase3);


spr_idx = 0;
damage_ins = noone;

damage_spr = ds_map_create();
damage_spr[? spr_providience_attack] = spr_mask_providience_attack1;
damage_spr[? spr_providience_attack3] = spr_mask_providience_attack3;
damage_spr[? spr_providience_attack4] = spr_mask_providience_attack4

rand_create(1, 2, 3, 4, 5);