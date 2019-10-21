/// @description scp_publicload();
with(sys_global) {
    var f, t1, t2, t1a, t2a;
    var n="global";
    if file_exists(n){
        f=file_text_open_read(n);
            var tmp=file_text_read_string(f);
            file_text_readln(f);
            pdata[1]=file_text_read_string(f);
            file_text_readln(f);
            pdata[2]=file_text_read_string(f);
            file_text_readln(f);
            pdata[3]=file_text_read_string(f);
        file_text_close(f);
        
        ds_list_clear(tmplist);
        ds_list_read(tmplist,tmp);
        
        isclear=false;
        //isclear=real(ds_list_find_value(tmplist,0));
        prever=ds_list_find_value(tmplist,1);
        
        ds_list_clear(tmplist);
        ds_list_read(tmplist,pdata[num]);

        if ds_list_size(tmplist)==0 {time=0; death=0;}
        else {
            time=ds_list_find_value(tmplist,0);
            death=ds_list_find_value(tmplist,1);
        }
    }
}
