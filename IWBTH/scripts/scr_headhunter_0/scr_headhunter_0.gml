///@argu index
var idx = argument[0];

switch(idx)
{
	case 0:
		sprite_change(spr_headhunter_phase_laserdown);
		onlaserline = true;
		onfocus = false;
		focus_dir = 270;
	break;
	
	case 10:
		var lx, ly;
		lx = x + ox + lengthdir_x(64 - 10, focus_dir);
		ly = y + oy + lengthdir_y(64 - 10, focus_dir);
		
		onlaserline = false;
		onfocus = false;
		laser_obj = instance_create_layer(lx, ly, L_ABOVE, obj_laser);
		with(laser_obj)
		{
			life_create(10);
			image_index = 1;
			image_blend = make_color_hsv(45, 0, 255);
			image_alpha = other.laseralpha;
			image_angle = other.focus_dir;
			num = 2;	
			den_add = 0.5;
		}
		screenshake(6, 2);
		sprite_change(spr_headhunter_phase_laserdown2);
		return no;
	break;
}

return 0;