var c = make_color_rgb(255, max(0, 230 - life_idx * 3), 0);
var a = 1.0;
var l = life - life_idx;

if l <= 12
	a = merge_value(0.0, 1.0, l/12);


var lx, ly, len;
len = image_yscale * 16;
lx = lengthdir_x(len, image_angle);
ly = lengthdir_y(len, image_angle);

gpu_set_tex_filter(false);
draw_sprite_ext(sprite_index, 0, x, y, image_yscale, image_yscale, image_angle, c, 0.9 * a);
draw_sprite_ext(sprite_index, 1, x + lx, y + ly, 100, image_yscale, image_angle, c, 0.9 * a);

gpu_set_tex_filter(true);