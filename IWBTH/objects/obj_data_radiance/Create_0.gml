ds_init();
scr_radiance_motion();

nextspr = map_create();
nextspr[? spr_radiance_idle] = spr_radiance_idle;
nextspr[? spr_radiance_focus] = spr_radiance_focus;
nextspr[? spr_radiance_turn] = spr_empty;
nextspr[? spr_radiance_turn2] = spr_radiance_idle;


platformlist = list_create();

var pq = ds_priority_create();
with(obj_radianceplatform)
{
	ds_priority_add(pq, id, y);
}

while(!ds_priority_empty(pq))
{
	var ind = ds_priority_delete_max(pq);
	ds_list_add(platformlist, ind);
}
ds_priority_destroy(pq);