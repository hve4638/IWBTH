t_i=0;
t_n=6;
t_ds=ds_list_create();
ds_list_add(t_ds,1,1,1,1,0,0);
ds_list_shuffle(t_ds)
for(var i=0;i<t_n;i++) {
    t_arr[i]=ds_list_find_value(t_ds,i);
}
ds_list_destroy(t_ds);

