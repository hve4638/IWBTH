///@desc New Event
var cam, cam_x, cam_y;
var cam_w, cam_h;
var x1, y1, x2, y2, rw, rh;
var cx, cy, scale;
cam = view_camera[0];
cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);
cam_w = camera_get_view_width(cam);
cam_h = camera_get_view_height(cam);

x1 = max(bbox_left - cam_x, 0);
x2 = min(bbox_right - cam_x, cam_w);
y1 = max(bbox_top + 1 - cam_y, 0);
y2 = min(bbox_bottom + 1- cam_y, cam_h);
scale = surface_get_width(application_surface) / cam_w;
cx = x1 * win_w / cam_w;
cy = y1 * win_h / cam_h;
rw = ceil((x2 - x1) * win_w / cam_w);
rh = ceil((y2 - y1) * win_h / cam_h);

if ceil(rw) <= 1 || ceil(rh) <= 1
	exit;

if surface_exists(reflect_surf)
	surface_free(reflect_surf);

reflect_surf = surface_create(rw, rh);

surface_set_target(reflect_surf);
	//draw_clear(reflect_color);
	draw_surface_ext(application_surface, cx, cy, 1, -1, 0, c_white, 1.0);
surface_reset_target();

draw_set_color(reflect_color);
draw_rectangle(cx, cy, cx + rw, cy + rh, false);

draw_surface(reflect_surf, cx, cy);

draw_set_alpha(0.4);
draw_rectangle(cx, cy, cx + rw, cy + rh, false);