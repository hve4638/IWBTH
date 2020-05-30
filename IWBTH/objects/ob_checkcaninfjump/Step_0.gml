if istry
	exit;


with(obj_player)
{
	if 3 <= jumpcnt
	{
		other.istry = true;
		with(ins_inftext)
			on = false;
	}
}
