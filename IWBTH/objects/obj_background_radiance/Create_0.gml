ds_init();

bg_idx = list_create();
bg_y = list_create();
rmy = room_height - view_h;
bgy = 992; //rmy - 1216;

var lid = layer_get_id("AstBackground2");
var lid2 = layer_get_id("AstBackground3");
ds_list_add(bg_idx, layer_sprite_get_id(lid2, "cloud0"));
ds_list_add(bg_idx, layer_sprite_get_id(lid, "cloud1"));
ds_list_add(bg_idx, layer_sprite_get_id(lid, "cloud2"));
ds_list_add(bg_idx, layer_sprite_get_id(lid, "cloud3"));


for(var i = 0; i < 4; i++)
	ds_list_add(bg_y, layer_sprite_get_y(bg_idx[| i]));


//1216