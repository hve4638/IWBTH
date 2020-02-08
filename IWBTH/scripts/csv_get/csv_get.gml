///@argu csv
///@argu string
///@argu index*
var grid = argument[0];
var lore = argument[1];
var ind = argument_count > 2 ? argument[2] : 1;
var w, h;
w = ds_grid_width(grid);
h = ds_grid_height(grid);

if ds_grid_value_exists(grid, 0, 0, 0, h - 1, lore)
{
	var i = ds_grid_value_y(grid, 0, 0, 0, h - 1, lore);

	return grid[# ind, i];
}

cout("error: csv_get return UNDEFINED (", lore, ")");
return no;