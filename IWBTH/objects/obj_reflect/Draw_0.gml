///@desc New Event
/*
var cam, cam_x, cam_y;
var cam_w, cam_h;
var x1, y1, x2, y2, rw, rh;
var cx, cy;
cam = view_camera[0];
cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);
cam_w = camera_get_view_width(cam);
cam_h = camera_get_view_height(cam);

x1 = max(bbox_left, cam_x);
x2 = min(bbox_right, cam_x + cam_w);
y1 = max(bbox_top, cam_y);
y2 = min(bbox_bottom, cam_y + cam_h);
cx = x1 - cam_x;
cy = y1 - cam_y;


rw = abs(x2 - x1);
rh = abs(y2 - y1);

cout("cam:", cam_w, cam_h)
cout("surface:", surface_get_width(application_surface), surface_get_height(application_surface))
if rw == 0 || rh == 0
	exit;

if surface_exists(reflect_surf)
	surface_free(reflect_surf);

if !surface_exists(reflect_surf2)
	reflect_surf2 = surface_create(cam_w, cam_h);

reflect_surf = surface_create(rw, rh);

var s = cam_w / surface_get_width(application_surface);

surface_set_target(reflect_surf2);
	draw_clear(reflect_color);
	draw_surface_ext(application_surface, 0, 0, s, s, 0, c_white, 1.0);
surface_reset_target();

surface_set_target(reflect_surf);
	draw_surface_ext(reflect_surf2, -cx, -cy, 1, -1, 0, c_white, 1.0);
	
	draw_set_color(reflect_color);
	draw_set_alpha(0.4);
	draw_rectangle(0, 0, rw, rh, false);
surface_reset_target();

draw_surface(reflect_surf, x1, y1);