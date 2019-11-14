///@desc New Event
var cam, cam_x, cam_y;
var x1, y1, x2, y2;
cam = view_camera[0];
cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);

x1 = max(bbox_left - cam_x, 0);
x2 = min(bbox_right - cam_x, win_w);
y1 = max(bbox_top - cam_y, 0);
y2 = min(bbox_bottom - cam_y, win_h);

if x1 == x2 || y1 == y2
	exit;

shader_set(shader2);
	shader_set_uniform_f(u_sec, sec);
	shader_set_uniform_f(u_resolution, 1088, 608);
	shader_set_uniform_f(u_boundary, y1);
	texture_set_stage(u_texture, surface_get_texture(application_surface));
	draw_rectangle(x1, y1, x2, y2 ,false);
shader_reset();



//draw_surface(application_surface, 0, 0);

/*
draw_set_color(c_aqua);
draw_set_alpha(0.1);
draw_rectangle(x1,y1,x2,y2,false);
draw_set_reset();

//draw_text(320, 54,lengthdir_y(32,sec));