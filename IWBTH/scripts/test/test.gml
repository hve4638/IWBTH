return 0;
var map = ds_map_create();
for(var i = 0; i < sprite_count; i++)
{
	map[? i] = sprite_get_name(i);
}
clipboard_set_text(ds_map_write(map));
ds_map_destroy(map);
//alarm_trigger(50, cout_show, ["12", 34, NL, "hi!"], true);

return 1;