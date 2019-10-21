with (other) {
if surface_exists(surface) surface_free(surface);
if surface_exists(surface1) surface_free(surface1);
if surface_exists(surface2) surface_free(surface2);
    
surface = surface_create(32,32);
surface2 = surface_create(32,32);
surface1 = surface_create(32,32);

surface_set_target(surface1);
draw_clear(c_white);
shader_set(sh_black);
draw_sprite_ext(sprite_index,image_index,abs(sprite_xoffset),abs(sprite_yoffset),image_xscale,image_yscale,image_angle,c_white,image_alpha);
shader_reset();
surface_reset_target();

surface_set_target(surface2);
shader_set(sh_removeblack);
draw_surface(surface1,0,0);
shader_reset();
surface_reset_target();

surface_set_target(surface);
draw_sprite_ext(spr_dimensionaura,I*0.3,0,0,1,1,0,c_white,1.0);
shader_set(sh_white);
draw_surface(surface2,0,0);
shader_reset();
surface_reset_target();

draw_self();
draw_set_alpha(0.8);
shader_set(sh_removewhite);
draw_surface(surface,x-abs(sprite_xoffset),y-abs(sprite_yoffset));
shader_reset();
draw_set_alpha(1.0);

}
