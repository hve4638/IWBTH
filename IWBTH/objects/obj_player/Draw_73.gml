if vismask {draw_sprite_ext(sprMaskPlayer,0,floor(x),floor(y),xScale,image_yscale,image_angle,c_white,0.7)}
if kid_hp<kid_mxhp {
    var i;
    draw_set_alpha(hp_alp);
    for(i=0;i<kid_hp;i++) draw_sprite(spr_health,0,x+(i-floor(kid_mxhp/2))*14,y-19);
    for(i=kid_hp;i<kid_mxhp;i++) draw_sprite(spr_health,1,x+(i-floor(kid_mxhp/2))*14,y-19);
    draw_set_alpha(1);
}

if 0<tpalpha {
    if 20<tpidx draw_sprite_ext(spr_loading,1,floor(x),floor(y),1,1,0,c_white,tpalpha);
    else {
        var i;
        draw_sprite_ext(spr_loading,0,floor(x),floor(y),1,1,0,c_white,tpalpha);
        texture_set_interpolation(false);
        for(i=0;i<=tpidx;i++) {
            draw_sprite_ext(spr_loading,3,floor(x),floor(y),1,1,i/20*360,c_white,tpalpha);
        }
        texture_set_interpolation(true);
    }
}

