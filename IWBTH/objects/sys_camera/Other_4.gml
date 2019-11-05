cam = view_camera[0];
view_enabled = true;
view_visible[0] = true;
view_wport[0] = win_w;
view_hport[0] = win_h;

camera_set_view_size(cam,1088,608);

if persistent
	persistent = false;
	
	
var rx, ry;
rx = floor(x - view_w * originw);
ry = floor(y - view_h * originh);

camera_set_view_pos(cam,rx,ry);