if !surface_exists(light) light=surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));
dark=make_colour_hsv(0,0,val);

surface_set_target(light);
draw_set_colour(dark);
draw_rectangle(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.WView, 0 ),false);
surface_reset_target();

if mouse {
    scp_light(mouse_x,mouse_y,256+128);
    //if sys_global.light_mouse 
    //if mouse_check_button_pressed(mb_left) sys_global.light_mouse=!sys_global.light_mouse;
}

