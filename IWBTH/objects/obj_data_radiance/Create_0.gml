ds_init();

nextspr = map_create();
nextspr[? spr_radiance_idle] = spr_radiance_idle;
nextspr[? spr_radiance_focus] = spr_radiance_focus;
nextspr[? spr_radiance_turn] = spr_empty;
nextspr[? spr_radiance_turn2] = spr_radiance_idle;


platformx = list_create();
platformy = list_create();

var pq = ds_priority_create();
with(obj_radianceplatform)
{
	ds_priority_add(pq, id, y);
}

while(!ds_priority_empty(pq))
{
	var ind = ds_priority_delete_max(pq);
	ds_list_add(platformx, ind.x);
	ds_list_add(platformy, ind.y);
}
ds_priority_destroy(pq);

scr_radiance_motion();