with(sys_global) {
    var f;
    var n="config"
    if !file_exists(n) {file_delete(n);}
    
    ds_list_clear(tmplist);
    ds_list_add(tmplist,upbutton,downbutton,leftbutton,rightbutton,shotbutton,jumpbutton,restartbutton,bgmset,cheat,uiset);
    cdata=ds_list_write(tmplist);
    
    f=file_text_open_write(n);
        file_text_write_string(f,cdata);
    file_text_close(f);
}
