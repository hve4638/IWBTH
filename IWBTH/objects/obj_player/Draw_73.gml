if 0<escape_idx
{
	var spr, w, h, p;
	spr = spr_escapegauge;
	w = sprite_get_width(spr);
	h = sprite_get_height(spr);
	p = escape_idx/escape_time;

	var surf = surface_create(w, h);


	surface_set_target(surf);
		draw_sprite(spr,1,0,0);
		
		draw_set_color(c_white);
		gpu_set_colorwriteenable(1,1,1,0);
		draw_cd(0,0,w,h,p);
		
		gpu_set_colorwriteenable(1,1,1,1);
		draw_sprite(spr,0,0,0);
	surface_reset_target();
	
	draw_surface_ext(surf, (bbox_left + bbox_right)/2 - w/2, bbox_bottom + h div 2, 1, 1, 0, c_white, escape_alpha);
	
	surface_free(surf);
}