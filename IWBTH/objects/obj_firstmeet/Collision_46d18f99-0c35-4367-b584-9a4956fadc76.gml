if !is_bossmeet()
{
	save();
	//cout(sv_y, bbox_bottom, obj_player.y);
	sv_y = bbox_bottom - (obj_player.sprite_height - obj_player.sprite_yoffset);
}
instance_destroy();