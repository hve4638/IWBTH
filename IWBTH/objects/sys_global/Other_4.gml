room_speed = DEFAULT_FPS;
show_bosshp = false;
intro_alpha = 0;
intro_time = 0;
scr_roomstart_bgm();

current_stage = room_get_stage();

tile_block = layer_get_id(L_BLOCK);
tile_collision = layer_tilemap_get_id(tile_block);