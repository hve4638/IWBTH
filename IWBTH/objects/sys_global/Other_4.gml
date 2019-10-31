room_speed = 50;

roombgm();

tile_block = layer_get_id(L_BLOCK);
tile_collision = layer_tilemap_get_id(tile_block);

layer_set_visible(tile_block,false);