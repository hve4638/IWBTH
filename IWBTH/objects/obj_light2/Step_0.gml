if !instance_exists(sys_lighting)
|| !surface_exists(light) exit;
draw_set_blend_mode(bm_subtract);
surface_set_target(light);

draw_set_colour(dark);
draw_rectangle(x+32-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),x+image_xscale*32-32-__view_get( e__VW.XView, 0 ),y+image_yscale*32-__view_get( e__VW.YView, 0 ),0);
draw_rectangle_colour(x-32-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),x+31-__view_get( e__VW.XView, 0 ),y+image_yscale*32-__view_get( e__VW.YView, 0 ),c_black,dark,dark,c_black,0);
draw_rectangle_colour(x+image_xscale*32-31-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),x+image_xscale*32+32-__view_get( e__VW.XView, 0 ),y+image_yscale*32-__view_get( e__VW.YView, 0 ),dark,c_black,c_black,dark,0);
surface_reset_target();
draw_set_blend_mode(bm_normal);

