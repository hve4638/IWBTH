//@argu color
var surf, col, colp;
var w, h;
col = argument[0];
surf = surface_get_target();
w = surface_get_width(surf);
h = surface_get_height(surf);
colp = draw_get_color();

draw_set_color(col);
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_src_alpha);
draw_rectangle(0, 0, w, h, false);

draw_set_color(colp);
gpu_set_blendmode(bm_normal);