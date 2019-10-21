var rx, ry;
rx=__view_get( e__VW.XView, 0 );
ry=__view_get( e__VW.YView, 0 );

draw_set_alpha(fade_set);
draw_rectangle_colour(rx,ry,rx+__view_get( e__VW.WView, 0 ),ry+__view_get( e__VW.HView, 0 ),fade_col,fade_col,fade_col,fade_col,0);
draw_set_alpha(1);

