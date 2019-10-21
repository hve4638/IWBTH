psize=ds_list_size(aftx);

for(var i=psize-1;0<=i;i--) {
    var px, py, pa;
    px=ds_list_find_value(aftx,i);
    py=ds_list_find_value(afty,i);
    pa=ds_list_find_value(afta,i);
    draw_sprite_ext(spr_whitechunk,0,px,py,1,1,pa,c_white,(i+1)/psize * 0.5);
}

if 1 {
    ds_list_delete(aftx,0);
    ds_list_delete(afty,0);
    ds_list_delete(afta,0);
    ds_list_add(aftx,x);
    ds_list_add(afty,y);
    ds_list_add(afta,image_angle);
}

draw_self();

