if !instance_exists(obj_player)
	exit;
	
if obj_player.invin
	exit;

if ongod
{
	with(obj_player)
	{
		with(echo_self_pos(x , y, 100, [1.0, 0.0], c_red, 1.0))
		{
			blend = bm_normal;
		}
	}
	exit;
}




var _x, _y;
_x = obj_player.x;
_y = obj_player.y;
cout("kill object: ", object_get_name(id.object_index)," (", id, ")");
//cout("kill event: ", event_type);

with(precreate(_x, _y, L_ABOVE))
{
	blood_spd = obj_player.force_spd;
	blood_dir = obj_player.force_dir;

	changed(obj_bloodemitter);
}

sfx(snd_death);
instance_destroy(Player);
instance_create_layer(_x, _y, L_PLAYER, obj_player_fake);

scr_gameover();