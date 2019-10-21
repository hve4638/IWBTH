with (other) {
if !(image_alpha<1) && isaft!=0 {
    var psize=ds_list_size(aftx);
    for(var i=psize-1;0<=i;i--) {
        var px, py, pa;
        px=ds_list_find_value(aftx,i);
        py=ds_list_find_value(afty,i);
        draw_sprite_ext(spr_bloodball,0,px,py,image_xscale,image_yscale,0,c_white,(i+1)/psize *0.5);
    }
    
    if !(xprevious==x && yprevious==y) || isaft==2 {
        ds_list_delete(aftx,0);
        ds_list_delete(afty,0);
        ds_list_add(aftx,x);
        ds_list_add(afty,y);
    }
}

draw_self();

}
