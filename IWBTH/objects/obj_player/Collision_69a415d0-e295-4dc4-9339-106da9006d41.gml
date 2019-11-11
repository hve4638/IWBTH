if 0 > bbox_left || room_width < bbox_right || room_height < bbox_top || bbox_bottom < 0
{
    with(other)
		teleport_act();
}