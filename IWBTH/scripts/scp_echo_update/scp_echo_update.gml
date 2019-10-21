/// @description scp_echo_update(isvis)
/// @param isvis
ds_list_add(echo_x,x);
ds_list_add(echo_y,y);
ds_list_add(echo_xs,image_xscale);
ds_list_add(echo_ys,image_yscale);
ds_list_add(echo_ang,image_angle);
ds_list_add(echo_b,image_blend);
ds_list_add(echo_alp,image_alpha);
ds_list_add(echo_vis,argument[0]);

ds_list_delete(echo_x,0);
ds_list_delete(echo_y,0);
ds_list_delete(echo_xs,0);
ds_list_delete(echo_ys,0);
ds_list_delete(echo_ang,0);
ds_list_delete(echo_alp,0);
ds_list_delete(echo_b,0);
ds_list_delete(echo_vis,0);
