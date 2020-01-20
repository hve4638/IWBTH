/*var size = 0;
if struct_run[0]
{
	var list = struct_list[0]
	var size = ds_list_size(list);
}
var str = "smoothstruct: " + string(smoothstruct) + NL;
str += strmerge("idx0: ", struct_idx[0], " ", size);
str += strmerge(floor(struct_idx[0]));
str += strmerge(dragun[? DragunParts.hand_r].image_index, ":");
draw_set_color(c_white);
draw_text(64, 64, str);