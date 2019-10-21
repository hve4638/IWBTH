/// @description scp_laod();
scp_localload();
with(sys_global) {
    var i, j;
    var tx, ty, troom, tflip;
    
    ds_map_clear(tmpmap);
    ds_map_read(tmpmap,ldata[num]);
    
    tx = tmpmap[? "x"];
    ty = tmpmap[? "y"];
    troom = asset_get_index(tmpmap[? "room"]);
    tflip = tmpmap[? "isflip"];
    wuss = tmpmap[? "wuss"];
    guy = tmpmap[? "guy"];
    for(i=0;i<7;i++) ki[i] = tmpmap[? "key"+string(i)];
    for(i=0;i<3;i++) orb[i] = tmpmap[? "orb"+string(i)];
    for(i=0;i<10;i++) boss[i] = tmpmap[? "bosskill"+string(i)];
    cantp = tmpmap[? "cantp"];
    SWITCH[0] = tmpmap[? "switch0"]
    
    with(obj_player) instance_destroy();
    if !(tx==-1 && ty==-1)
    {
        instance_create(tx,ty,obj_player);
        with(obj_player) {persistent=1; FLIP=tflip;}
    }

    cansave=true;
    room_goto(troom);
    event_user(0);
}
