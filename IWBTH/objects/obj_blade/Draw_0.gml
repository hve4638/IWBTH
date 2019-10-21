psize=ds_list_size(aftx);

for(var i=psize-1;0<=i;i--) {
    var px, py, pa;
    px=ds_list_find_value(aftx,i);
    py=ds_list_find_value(afty,i);
    pa=ds_list_find_value(afta,i);
    draw_sprite_ext(spr_blade,image_index,px,py,image_xscale,image_yscale,pa,c_white,(i+1)/psize * 0.2);
}

if T++ mod 5 == 0 {
    ds_list_delete(aftx,0);
    ds_list_delete(afty,0);
    ds_list_delete(afta,0);
    ds_list_add(aftx,x);
    ds_list_add(afty,y);
    ds_list_add(afta,image_angle);
}

draw_self();

