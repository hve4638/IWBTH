///@param record
///@param index*
var record = argument[0];
var idx = argument_count > 1 ? argument[1] : record[? Record.index];
idx = clamp(idx, 0, ds_list_size(record[? Record.state])-1);
record[? Record.index] = idx + 1;

var _x, _y, spr, img, xs, ys, r, c, a;
var st, rm;

st = ds_list_find_value(record[? Record.state], idx);
rm = ds_list_find_value(record[? Record.rm], idx);

if rm != room || st == RecordState.die
	return 0;

_x = ds_list_find_value(record[? Record.x], idx);
_y = ds_list_find_value(record[? Record.y], idx);
spr = ds_list_find_value(record[? Record.sprite], idx);
img = ds_list_find_value(record[? Record.subimg], idx);
xs = ds_list_find_value(record[? Record.xscale], idx);
ys = ds_list_find_value(record[? Record.yscale], idx);
r = ds_list_find_value(record[? Record.rot], idx);
c = ds_list_find_value(record[? Record.col], idx);
a = ds_list_find_value(record[? Record.alpha], idx);

draw_sprite_ext(spr, img, _x, _y, xs, ys, r, c, a);