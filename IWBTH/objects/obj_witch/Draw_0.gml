draw_self();

psize=ds_list_size(aftx);

for(var i=psize-1;0<=i;i--) {
    var px, py;
    px=ds_list_find_value(aftx,i);
    py=ds_list_find_value(afty,i);
    draw_sprite_ext(spr_witch_after,0,px,py,1,1,0,c_white,(i+1)/psize * 0.2);
}

if T++ mod 5 == 0 {
    ds_list_delete(aftx,0);
    ds_list_delete(afty,0);
    ds_list_add(aftx,x);
    ds_list_add(afty,y);
}


draw_text(0,0,string_hash_to_newline(tm));

if 0<=tm tm++;

