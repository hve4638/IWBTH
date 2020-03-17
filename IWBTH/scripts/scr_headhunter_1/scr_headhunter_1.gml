///@argu index
var idx = argument[0];

switch(idx)
{
	case 0:
		sprite_change(spr_headhunter_phase_laser90);
		sfx(snd_laserready);
		onlaserline = true;
		onfocus = false;
		focus_dir = 270;
		onlaser90 = false;
		laser90_idx = 0;
		laser_obj = noone;
	break;
	
	case 10:
		sprite_change(spr_headhunter_laser_90, 0, 0);
		sfx(snd_laser);
		var lx, ly;
		lx = x + ox + lengthdir_x(64 - 10, focus_dir);
		ly = y + oy + lengthdir_y(64 - 10, focus_dir);
		
		onlaserline = false;
		onfocus = false;
		onlaser90 = true;
		
		laser_obj = instance_create_layer(lx, ly, L_ABOVE, obj_laser);
		with(laser_obj)
		{
			life_create(45);
			killforce = false;
			image_index = 1;
			image_blend = make_color_hsv(45, 0, 255);
			image_alpha = other.laseralpha;
			image_angle = other.focus_dir;
			num = 1;
			//num = 2;
			num_add = 0;
			den_add = 0;
		}
		screenshake(6, 45);
	break;
	
	
	case 42:
		sprite_change(spr_headhunter_phase_laser90_end);
		return no;
	break;
}

if onlaser90
{
	image_index = laser90_idx / 90 * image_number;
	laser90_idx = clamp(laser90_idx + 3, 0, 90);
}

if instance_exists(laser_obj)
{
	var t = 270;
	if look > 0
		t -= laser90_idx;
	else
		t += laser90_idx;
	
	var lx, ly;
	lx = x + ox + lengthdir_x(64 - 10, t);
	ly = y + oy + lengthdir_y(64 - 10, t);
	with(laser_obj)
	{
		x = lx;
		y = ly;
		image_angle = t;
	}
}

return 0;