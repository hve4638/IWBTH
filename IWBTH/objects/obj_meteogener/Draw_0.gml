var i, j;
i=0; j=y;
draw_set_colour(c_red);
repeat(48) {
    draw_set_alpha((48-i)/48*alpha);
    draw_line(x,j,x+64,j);
    i++; j--;
}
draw_set_colour(c_white);
draw_set_alpha(1);

