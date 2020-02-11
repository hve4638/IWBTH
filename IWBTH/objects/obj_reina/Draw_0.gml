var xx, yy;
var d1 = dsin(time_idx * 1.75);
var d2 = dsin(180 + time_idx * 1.75);

var ty = y;
y += dsin(time_idx * 2) * 3;

draw_sprite(spr_reina_hood, 0, x, y);
xx = x - 5; yy = y + 2;
draw_sprite_ext(spr_reina_legright, 0, xx, yy, 1, 1, d2, c_white, 1.0);

xx = x + 2; yy = y + 1;
draw_sprite_ext(spr_reina_legleft, 0, xx, yy, 1, 1, d1, c_white, 1.0);

draw_sprite(spr_reina_body, 0, x, y);

y = ty;