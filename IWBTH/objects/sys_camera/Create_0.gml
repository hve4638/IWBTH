//camera_set_view_angle(cam,CAM_ANGLE);
cam = view_camera[0];

follow = ds_list_create();
follow_type = Camtype.follow_obj;
follow_div = 10;

ds_list_add(follow, obj_player, obj_create);

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
addx = 0;
addy = 0;

camera_follow();
x = xTo;
y = yTo;

//fade
fade_alpha = 0;
fade_get = 0;
fade_col = c_white;

blur_alpha = 0;

//screen shake
shake_queue = ds_priority_create();
shake_map = ds_map_create();
shake = 0;

sprite_index = noone;
time_idx = 0;