ds_init();
pysical_create();

tile_collision = tilemap_id(L_BLOCK);

image_index = 0;
image_speed = 0;


show_dps = true;
takenlist = list_create();
hit = 0;
dps = 0;

repeat(DEFAULT_FPS) ds_list_add(takenlist, 0);