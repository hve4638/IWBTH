if !instance_exists(subor_ins)
	exit;

if !surface_exists(surf)
	surf = surface_create(abs(sprite_width), abs(sprite_height));

var ex = sprite_ext();
ex[Spr.xx] = sprite_xoffset;
ex[Spr.yy] = sprite_yoffset + subor_ins.trap_y;

surface_set_target(surf);
	draw_clear_alpha(c_white, 0.0);
	draw_sprite_array(ex);
surface_reset_target();

draw_surface(surf, subor_ins.x - sprite_xoffset, subor_ins.y - sprite_yoffset);