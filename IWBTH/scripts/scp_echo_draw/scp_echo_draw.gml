/// @description scp_echo_draw()
var tx, ty, txs, tys, talp, tang, tb;
psize=ds_list_size(echo_x);

for(var i=psize-1;0<=i;i--) {
    if !ds_list_find_value(echo_vis,i) continue;
    tx=ds_list_find_value(echo_x,i);
    ty=ds_list_find_value(echo_y,i);
    txs=ds_list_find_value(echo_xs,i);
    tys=ds_list_find_value(echo_ys,i);
    talp=ds_list_find_value(echo_alp,i);
    tang=ds_list_find_value(echo_ang,i);
    tb=ds_list_find_value(echo_b,i);
    draw_sprite_ext(sprite_index,0,tx,ty,txs,tys,tang,tb,talp * (i+1)/psize); // 
}
