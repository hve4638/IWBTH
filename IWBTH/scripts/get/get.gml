///@param index
var w, h, idx;
idx = argument[0];

w = ds_grid_width(global.textscript);
h = ds_grid_height(global.textscript);

if ds_grid_value_exists(global.textscript, 0, 1, 0, h-1, idx)
{
	var l = ds_grid_value_y(global.textscript, 0, 1, 0, h-1, idx);
	
	return global.textscript[# 1, l];
}

return "- ";