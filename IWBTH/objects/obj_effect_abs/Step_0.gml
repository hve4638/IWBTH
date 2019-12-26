life_step();

var p = life_idx/life;
var pl = 1 / (alphalen-1);
var p2 = p * (alphalen-1);
var s, e;

s = floor(p2);
e = ceil(p2);
image_alpha = value_merge(alpha[s],alpha[e], p - pl * s);

x = value_merge(xstart, to_x, life_idx/life);
y = value_merge(ystart, to_y, life_idx/life);