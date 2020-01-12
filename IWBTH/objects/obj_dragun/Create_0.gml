maxhp = 400;
hp = maxhp;
drawhp = 0;
onhealth = false;

dragun = dragun_create();
data_create(obj_data_dragun);

struct_list = -1;
struct_idx = 0;
struct_speed = 1;
struct_run = false;

dragun_set(dragun, st_default);

for(var i = 0; i < DragunParts.last; i++)
	dragun[? i].dealto = id;

head_follow = true;
head_follow_range = 180;
head_hspd = 0;

dragun[? DragunParts.body].image_speed = 1;
dragun[? DragunParts.head].image_speed = 1;
dragun[? DragunParts.wings].image_speed = 1;
dragun[? DragunParts.wings].dealto = noone;
sprite_index = -1;