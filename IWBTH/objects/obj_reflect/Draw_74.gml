var cam, cam_x, cam_y;
var cam_w, cam_h;
var x1, y1, x2, y2;
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
cx = x1;
cy = y1;

if !surface_exists(reflect_surf)
	reflect_surf = surface_create(surf_width, surf_height);

surface_set_target(reflect_surf);
	draw_clear_alpha(c_white, 0.0);
	draw_surface_ext(application_surface, cx, cy, 1/view_ratio, -1/view_ratio, 0, c_white, 1.0);
surface_reset_target();

draw_set_color(reflect_color);
draw_rectangle(x1, y1, x2, y2, false);

draw_surface(reflect_surf, cx, cy);

draw_set_alpha(0.4);
draw_rectangle(x1, y1, x2, y2, false);