///@argu index
var idx = argument[0];

switch(idx)
{
	case 0:
		sprite_change(spr_headhunter_phase_laser180);
		sfx(snd_laserready);
		onlaserline = true;
		onfocus = false;
		focus_dir = 0;
		onlaser180 = false;
		laser180_idx = 0;

		laser_obj = noone;
		look = 1;
	break;
	
	case 4:
		sprite_change(spr_headhunter_laser_180, 0, 0);
	break;
	
	case 25:
		sprite_change(spr_headhunter_laser_180, 0, 0);
		sfx(snd_laser);
		var lx, ly;
		lx = x + ox + lengthdir_x(64 - 10, focus_dir);
		ly = y + oy + lengthdir_y(64 - 10, focus_dir);
		
		onlaserline = false;
		onfocus = false;
		onlaser180 = true;
		
		laser_obj = instance_create_layer(lx, ly, L_ABOVE, obj_laser);
		with(laser_obj)
		{
			life_create(36);
			killforce = false;
			image_index = 1;
			image_blend = c_yellow;
			image_alpha = other.laseralpha;
			image_angle = other.focus_dir;
			num = 1;
			//num = 2;
			num_add = 0;
			den_add = 0;
		}
		screenshake(6, 45);
	break;
	
	
	case (25 + 36):
		onlaser180 = false;
		return no;
	break;
}

if onlaser180
{
	image_index = laser180_idx / 180 * image_number;
	laser180_idx = clamp(laser180_idx + 5, 0, 179);
}

if instance_exists(laser_obj)
{
	var t = - laser180_idx;
	
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