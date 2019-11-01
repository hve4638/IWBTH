cam = view_camera[0];
view_enabled = true;
view_visible[0] = true;
view_wport[0] = win_w;
view_hport[0] = win_h;

//camera_set_view_angle(cam,CAM_ANGLE);
camera_set_view_size(cam,1088,608);

follow = ds_list_create();
follow_type = Camtype.follow_obj;
follow_div = 10;

ds_list_add(follow, obj_player);

originw = 0.5;
originh = 0.5;

xview_min = view_w * originw;
yview_min = view_h * originh;
xview_max = room_width - xview_min;
yview_max = room_height - yview_min;

xmod_enable = true;
ymod_enable = true;
xmod = 1088;
ymod = 608;

xTo = x;
yTo = y;
addx = 0;
addy = 0;

//fade
fade_alpha = 0;
fade_get = 0;
fade_col = c_white;

//screen shake
shake_queue = ds_priority_create();
shake_map = ds_map_create();
shake = 0;

sprite_index = noone;
time_idx = 0;