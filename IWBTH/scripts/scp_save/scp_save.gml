/// @description scp_save(x,y,room);
/// @param x
/// @param y
/// @param room
with(sys_global) {
    var tmp_flip=false;
    with(obj_player) tmp_flip=FLIP;
    
    ds_map_clear(tmpmap);
    //ds_list_add(tmplist,round(argument0),round(argument1),argument2,tmp_flip,wuss,guy); //x, y, room
    tmpmap[? "x"] = round(argument0);
    tmpmap[? "y"] = round(argument1);
    tmpmap[? "room"] = room_get_name(argument2);
    tmpmap[? "isflip"] = tmp_flip;
    tmpmap[? "wuss"] = wuss;
    tmpmap[? "guy"] = guy;
    tmpmap[? "switch0"] = SWITCH[0];
    
    var i; 
    for(i=0;i<7;i++) tmpmap[? "key"+string(i)] = ki[i];
    for(i=0;i<3;i++) tmpmap[? "orb"+string(i)] = orb[i];
    for(i=0;i<10;i++) tmpmap[? "bosskill"+string(i)] = boss[i];
    
    tmpmap[? "cantp"] = cantp;
    ldata[num]=ds_map_write(tmpmap);
}
scp_localsave();
scp_publicsave();
