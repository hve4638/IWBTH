var set, col;
set = argument_count > 0 ? argument[0] : 0;
col = argument_count > 1 ? argument[1] : -1;

sys_global.fade_alpha = set;

if 0 <= col
	sys_global.fade_col = col;
