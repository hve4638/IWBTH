var str;

str = "Record Mode - " + string(record_get_position(record))  +"\n";
str += "Record length - " + string(ds_list_size(record[? Record.state]))  +"\n";
if onRec
	str += "On Record\n"
	
if onPlay
	str += "Record Play \n";

draw_set_reset();
draw_set_color(c_red);
draw_text(0, 128, str);


draw_set_reset();