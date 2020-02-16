ds_init();
cam = view_camera[0];

follow = list_create();
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

//fade
fade_alpha = 0.0;
fade_alpha_p = 0.0;
fade_alpha_to = 0.0;
fade_idx = 0;
fade_time = 0;
fade_color = c_black;

blur_alpha = 0;

camera_x1 = 0;
camera_y1 = 0;
camera_x2 = 0;
camera_y2 = 0;

firstmeet = true;

//screen shake
shake_queue = priority_create();
shake_map = map_create();
shake = 0;

sprite_index = noone;
time_idx = 0;