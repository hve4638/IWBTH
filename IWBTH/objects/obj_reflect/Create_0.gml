///@desc New Event
reflect_surf = -1;
reflect_list = ds_list_create();
reflect_queue = ds_priority_create();
ds_list_add(reflect_list, obj_player, obj_bullet, obj_slash, obj_echo, obj_hubcolumn, obj_dragun_intro);

reflect_color = 0x99D6FF;