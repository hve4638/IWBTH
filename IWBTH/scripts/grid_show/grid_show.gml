///@argu ds_grid
var grid = argument[0];

if !is_real(grid)
{
	cout_show(grid, "is not index!");
	return 0;
}

if !ds_exists(grid, ds_type_grid)
{
	cout_show(grid, "is not ds_map!");
	return 0;
}


var str = "";
var w, h;
w = ds_grid_width(grid)
h = ds_grid_height(grid)
for(var i = 0; i < h; i ++)
{
	for(var j = 0; j < w; j++)
		str += string(grid[# j, i]) + " ";

	str += NL;
}

return str;