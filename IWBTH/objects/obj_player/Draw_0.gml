var alpha, drawx, drawy, xscale;
drawx = round(x);
drawy = round(y);
alpha = image_alpha;
xscale = image_xscale * look;

draw_sprite_ext(sprite_index, image_index, drawx, drawy, xscale, image_yscale, image_angle, image_blend, alpha);
