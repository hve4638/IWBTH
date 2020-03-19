scr_roomstart_bgm();

current_stage = room_get_stage();
if is_ingame(room)
{
	ontimer = true;
	canrestart = true;
}
else
{
	ontimer = false;
	canrestart = false;
}

if debuglv(1) cout("stage: ", current_stage, " ingame: ", ontimer);

room_speed = DEFAULT_FPS;
show_bosshp = false;
intro_alpha = 0;
intro_time = 0;

tile_block = layer_get_id(L_BLOCK);
tile_collision = layer_tilemap_get_id(tile_block);