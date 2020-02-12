///@desc destroyfloor
var lid = layer_get_id(L_BLOCK);
var tid = layer_tilemap_get_id(lid);
tilemap_clear(tid, 0);