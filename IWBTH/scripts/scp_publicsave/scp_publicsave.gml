with(sys_global)
{
    var f;
    var n="global";
    if !file_exists(n) {file_delete(n);}
    
    ds_list_clear(tmplist);
    ds_list_add(tmplist,isclear,version);
    var tmp=ds_list_write(tmplist);
    //scp_debug_showlist(tmp);
    
    ds_list_clear(tmplist);
    ds_list_add(tmplist,time,death);
    pdata[num]=ds_list_write(tmplist);
    
    f=file_text_open_write(n);
        file_text_write_string(f,tmp);
        file_text_writeln(f);
        file_text_write_string(f,pdata[1]);
        file_text_writeln(f);
        file_text_write_string(f,pdata[2]);
        file_text_writeln(f);
        file_text_write_string(f,pdata[3]);
    file_text_close(f);
}
