/// @description scp_laod();
scp_localload_old();
with(sys_global) {
    var i, j;
    var tx, ty, troom, tflip;
    
    ds_list_clear(tmplist);
    ds_list_read(tmplist,ldata[num]);
    
    i=0;
    tx=ds_list_find_value(tmplist,i++);
    ty=ds_list_find_value(tmplist,i++);
    troom=ds_list_find_value(tmplist,i++);
    tflip=ds_list_find_value(tmplist,i++);
    wuss=ds_list_find_value(tmplist,i++);
    guy=ds_list_find_value(tmplist,i++);
    
    j=0; repeat(7) {ki[j++]=ds_list_find_value(tmplist,i++);}
    j=0; repeat(3) {orb[j++]=ds_list_find_value(tmplist,i++);}
    j=0; repeat(10) {boss[j++]=ds_list_find_value(tmplist,i++);}
    cantp=ds_list_find_value(tmplist,i++);
    
    with(obj_player) instance_destroy();
    instance_create(tx,ty,obj_player);
    with(obj_player) {persistent=1; FLIP=tflip;}

    cansave=true;
    room_goto(troom);
    event_user(0);
}
