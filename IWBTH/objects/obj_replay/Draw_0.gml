if ds_list_size(ds_x)==0 exit;

var i=clamp(rec_pos,0,ds_list_size(ds_x)-1);
var X=ds_list_find_value(ds_x,i);
var Y=ds_list_find_value(ds_y,i);
var R=ds_list_find_value(ds_rm,i);
var SPR=ds_list_find_value(ds_spr,i);
var IDX=ds_list_find_value(ds_idx,i);
var XS=ds_list_find_value(ds_xs,i);
var YS=ds_list_find_value(ds_ys,i);
var ST=ds_list_find_value(ds_st,i);

if room==R {
    if ST==1 draw_sprite_ext(SPR,IDX,X,Y,XS,YS,0,c_white,random_range(alpmin,alpmax)*image_alpha);
}

