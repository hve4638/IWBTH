draw_self();
draw_set_color(c_black);
var str = "";
for(var i = 0; i < rand_size; i++)
	str += string(rand_idx[| i]) + ": " + string(rand_cnt[| i]) + "," + string((rand_cnt[| i] * 100)/rand_sum) + "% \n";
draw_text(x, y-320, str);