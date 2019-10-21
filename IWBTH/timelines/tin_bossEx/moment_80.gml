/// @description Danaku mode
with(obj_player) {DANMAKU=true; image_alpha=0.8;}

///Block destory


var i, j;
for(j=0;j<2;j++) for(i=0;i<4;i++) {
    tile_add(tile01,0,96,32,32,j*32,i*32+320,0);
    instance_create(j*32,i*32+320,obj_block);
}
if collision_rectangle(0,320,64,320+32*4,obj_player,0,0) scp_kill();

for(var i=64;i<800-64-1;i+=32) for(var j=64;j<608-64-1;j+=32) {
    var t=tile_layer_find(0,i,j);
    if tile_exists(t) tile_delete(t);
    
    var t=collision_point(i,j,obj_block,0,0);
    if t!=noone with(t) instance_destroy();
}

tm = -tm;
