///@argu ins*
var ins = argument_count > 0 ? argument[0] : self;

return (ins.bbox_right < 0 || ins.bbox_left > room_width || ins.bbox_bottom < 0 || ins.bbox_top > room_height);