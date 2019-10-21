/// @description scp_light(x,y,bright);
/// @param x
/// @param y
/// @param bright
var bx, by, size;
bx=argument[0];
by=argument[1];
size=argument[2];
if !instance_exists(sys_lighting)
|| !surface_exists(light)
|| bx+size/2<__view_get( e__VW.XView, 0 )
|| bx-size/2>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )
|| by+size/2<__view_get( e__VW.YView, 0 )
|| by-size/2>__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
return -1;
draw_set_blend_mode(bm_subtract);
surface_set_target(light);
draw_ellipse_colour(bx-size/2-__view_get( e__VW.XView, 0 ),by-size/2-__view_get( e__VW.YView, 0 ),bx+size/2-__view_get( e__VW.XView, 0 ),by+size/2-__view_get( e__VW.YView, 0 ),dark,c_black,false);
surface_reset_target();
draw_set_blend_mode(bm_normal);
