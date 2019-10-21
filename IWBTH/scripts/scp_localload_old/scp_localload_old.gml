//scp_localload()
var f;
var n="save";
with(sys_global) {
    if file_exists(n){
        f=file_text_open_read(n);
            ldata[1]=file_text_read_string(f);
            file_text_readln(f);
            ldata[2]=file_text_read_string(f);
            file_text_readln(f);
            ldata[3]=file_text_read_string(f);
        file_text_close(f);
    }
}
