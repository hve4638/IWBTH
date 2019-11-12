///@param filename
var filename = argument[0];
var str = "";

var f = file_text_open_read(filename);

while(!file_text_eof(f))
{
	str += file_text_read_string(f) + "\n";
	file_text_readln(f);
}
file_text_close(f);

return json_decode(str);