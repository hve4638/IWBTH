///@desc New Event
var cam, cam_x, cam_y;
var x1, y1, x2, y2, rw, rh;
cam = view_camera[0];
cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);

x1 = max(bbox_left - cam_x, 0);
x2 = min(bbox_right - cam_x, win_w);
y1 = max(bbox_top - cam_y, 0);
y2 = min(bbox_bottom - cam_y, win_h);
rw = abs(x2 - x1);
rh = abs(y2 - y1);


//cout("x:", x1, "~", x2, "y:", y1, "~", y2, " (", rw, ",", rh, ")");
if rw == 0 || rh == 0
	exit;

if surface_exists(reflect_surf)
	surface_free(reflect_surf);

reflect_surf = surface_create(rw, rh);

surface_set_target(reflect_surf);
	draw_surface_ext(application_surface, 0, win_h - rh, 1, -1, 0, c_white, 1.0);
surface_reset_target();

draw_surface(reflect_surf, x1, y1);
//draw_surface_ext(reflect_surf, x1, y1, 1, 1, 0, c_white, 0.3);

draw_set_color(reflect_color);
draw_set_alpha(0.4);
draw_rectangle(x1, y1, x2, y2, false);
draw_set_reset();

/*
shader_set(shader2);
	shader_set_uniform_f(u_sec, sec);
	shader_set_uniform_f(u_resolution, 1088, 608);
	shader_set_uniform_f(u_boundary, y1);
	texture_set_stage(u_texture, surface_get_texture(application_surface));
	draw_rectangle(x1, y1, x2, y2 ,false);
shader_reset();
*/


//draw_surface(application_surface, 0, 0);

/*
draw_set_color(c_aqua);
draw_set_alpha(0.1);
draw_rectangle(x1,y1,x2,y2,false);
draw_set_reset();

//draw_text(320, 54,lengthdir_y(32,sec));