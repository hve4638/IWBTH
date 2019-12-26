var w, h, sx, sy;
sx = scale * min(5, abs(life - life_idx))/5;
sy = scale * min(5, abs(life - life_idx))/5;
w = width div 2 * sx;
h = height div 2 * sy;

draw_set_color(color);
draw_rectangle(x + w, y + h, x - w, y - h, false);
draw_set_reset();