with(sys_global) {
    var f, t1, t2, t1a, t2a;
    var n="config";
    
    if file_exists(n){
        f=file_text_open_read(n);
            cdata=file_text_read_string(f);
        file_text_close(f);
        
        ds_list_read(tmplist,cdata);
        upbutton=ds_list_find_value(tmplist,0);
        downbutton=ds_list_find_value(tmplist,1);
        leftbutton=ds_list_find_value(tmplist,2);
        rightbutton=ds_list_find_value(tmplist,3);
        shotbutton=ds_list_find_value(tmplist,4);
        jumpbutton=ds_list_find_value(tmplist,5);
        restartbutton=ds_list_find_value(tmplist,6);
        bgmset=ds_list_find_value(tmplist,7);
        cheat=ds_list_find_value(tmplist,8);
        uiset=ds_list_find_value(tmplist,9);
    } else scp_configdef();
}
