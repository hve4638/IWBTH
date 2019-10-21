if A {
    psize=ds_list_size(aftx);
    
    for(var i=psize-1;0<=i;i--) {
        var px, py, pa;
        px=ds_list_find_value(aftx,i);
        py=ds_list_find_value(afty,i);
        pa=ds_list_find_value(afta,i);
        draw_sprite_ext(spr_sorcerer_echo,0,px,py,pa,1,0,c_white,(i+1)/psize * 0.2);
    }
    
    if T++ mod 5 == 0 {
        ds_list_delete(aftx,0);
        ds_list_delete(afty,0);
        ds_list_delete(afta,0);
        ds_list_add(aftx,x);
        ds_list_add(afty,y);
        ds_list_add(afta,image_xscale);
    }
}


if 0<circle_time {
    if 12<circle_time circle_alpha+=0.1;
    else circle_alpha-=0.1;
    
    draw_sprite_ext(spr_circle2,circle_index,x,y+8,circle_alpha*1.5,circle_alpha*1.5,circle_angle,c_white,circle_alpha);
    circle_alpha=clamp(circle_alpha,0,1);
    circle_angle+=4;
    circle_time--;
}

draw_self();

