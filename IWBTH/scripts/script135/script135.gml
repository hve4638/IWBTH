/*
surf = surface_create(256, 256);

surface_set_target(surface);
draw_clear(c_black);
draw_sprite_tiled(sprTest, 0, 0, 0);
surface_reset_target();

mask_surf = surface_create(256, 256);

surface_set_target(mask_surf);
draw_clear(c_black);
draw_set_blend_mode(bm_subtract);
draw_sprite(sprMask, 0, 128, 128);
draw_set_blend_mode(bm_normal);
surface_reset_target();

surface_set_target(surf);
draw_set_blend_mode(bm_subtract);
draw_surface(mask_surface, 0, 0);
draw_set_blend_mode(bm_normal);
surface_reset_target();

screen_effect()