image_index = enable ? 1 : 0;
draw_self();
/*
draw_set_color(c_white);
draw_set_halign(1); draw_set_valign(1);
draw_text_transformed((bbox_left + bbox_right) div 2, (bbox_top + bbox_bottom) div 2, str, s, s, 0);
draw_set_reset();