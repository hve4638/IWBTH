var tile;
for(i=0;i<room_width;i+=32)
    for(j=0;j<room_height;j+=32)
    {
        tile = tile_layer_find(1000,i,j);
        if tile!=-1
        {
            tile_delete(tile);
            instance_create(i,j,obj_block_tower);
        }
    }

