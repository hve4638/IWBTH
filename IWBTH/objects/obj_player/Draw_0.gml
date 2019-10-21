if 0<kid_inv image_alpha=0.7;
else image_alpha=1;
draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),xScale,image_yscale,image_angle,image_blend,image_alpha);

if DANMAKU draw_sprite(spr_point,0,x,y);
if wuss draw_sprite_ext(spr_ribbon,0,floor(x),floor(y),xScale,image_yscale,0,c_white,1);


