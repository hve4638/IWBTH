/// @description scp_save(x,y,room);
/// @param x
/// @param y
/// @param room
with(sys_global) {
    var tmp_flip=false;
    with(obj_player) tmp_flip=FLIP;
    
    ds_list_clear(tmplist);
    ds_list_add(tmplist,round(argument0),round(argument1),argument2,tmp_flip,wuss,guy); //x, y, room
    var i=0; repeat(7) ds_list_add(tmplist,ki[i++]); //Key
    var i=0; repeat(3) ds_list_add(tmplist,orb[i++]); //orb
    var i=0; repeat(10) ds_list_add(tmplist,boss[i++]); //boss kill
    ds_list_add(tmplist,cantp);
    
    ldata[num]=ds_list_write(tmplist);
}
scp_localsave();
scp_publicsave();
