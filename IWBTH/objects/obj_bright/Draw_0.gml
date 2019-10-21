draw_set_blend_mode(bm_subtract);
draw_set_colour(c_black);
for(var i=bright-1;0<=i;i--) {
    var j=(bright-i)/bright * 255;
    draw_set_colour(make_colour_rgb(j,j,j));
    draw_rectangle(x-i,y-i,x+image_xscale*8+i,y+image_yscale*8+i,false);
}
draw_set_blend_mode(bm_normal)
draw_set_alpha(1);

