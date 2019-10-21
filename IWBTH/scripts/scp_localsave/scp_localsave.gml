//scp_localsave()
var f;
var n="save";
with(sys_global) {
    if !file_exists(n) {file_delete(n);}
    f=file_text_open_write(n);
        file_text_write_string(f,ldata[1]);
        file_text_writeln(f);
        file_text_write_string(f,ldata[2]);
        file_text_writeln(f);
        file_text_write_string(f,ldata[3]);
    file_text_close(f);
}
