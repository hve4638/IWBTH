/// @description scp_echo_create(num);
/// @param num

echo_x=ds_list_create();
echo_y=ds_list_create();
echo_xs=ds_list_create();
echo_ys=ds_list_create();
echo_ang=ds_list_create();
echo_alp=ds_list_create();
echo_b=ds_list_create();
echo_vis=ds_list_create();

repeat(argument[0]) {
    ds_list_add(echo_x,x);
    ds_list_add(echo_y,y);
    ds_list_add(echo_xs,image_xscale);
    ds_list_add(echo_ys,image_yscale);
    ds_list_add(echo_ang,image_angle);
    ds_list_add(echo_alp,image_alpha);
    ds_list_add(echo_b,image_blend);
    ds_list_add(echo_vis,false);
}
