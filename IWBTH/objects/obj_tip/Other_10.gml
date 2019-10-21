ds_x=ds_list_create();
ds_y=ds_list_create();
ds_rm=ds_list_create();
ds_spr=ds_list_create();
ds_idx=ds_list_create();
ds_xs=ds_list_create();
ds_ys=ds_list_create();
ds_st=ds_list_create();

onreplay=true;

var str=replaycode;
if string_count("#",str)==8 {
    var i, j;
    for(i=0;i<8;i++) {
        j=string_pos("#",str);
        a[i]=string_copy(str,1,j-1);
        str=string_delete(str,1,j);
    }
    ds_list_read(ds_x,a[0]);
    ds_list_read(ds_y,a[1]);
    ds_list_read(ds_rm,a[2]);
    ds_list_read(ds_spr,a[3]);
    ds_list_read(ds_idx,a[4]);
    ds_list_read(ds_xs,a[5]);
    ds_list_read(ds_ys,a[6]);
    ds_list_read(ds_st,a[7]);
}

