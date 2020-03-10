if todo_is_playing()
{
	scr_headhunter_todo();
	
	if todo_end(todo_current())
	{
		scr_headhunter_next();
	}
}

if onboomfloor //&& time_idx mod 2 == 0
{
	with(instance_create_layer(boomfloor_idx, w_bottom - 3, L_BELOW, obj_headhunterboom))
	{
		install_idx = 10;
		install_time = 0;
		onboom = true;
		boom_time = 25 + (other.boomfloor_idx - other.w_left - 32) div 48;
	}
	boomfloor_idx += 48;

	if boomfloor_idx > w_right
		onboomfloor = false;
}

if onfocus
{
	var d, a;
	d = point_direction(x + ox, y + oy, Player.x, Player.y);
	a = angle_difference(focus_dir, d);

	if a < 8
		focus_dir = d;
	else
	{
		if angle_difference(focus_dir + 8, d) < a
			focus_dir += 8;
		else
			focus_dir -= 8;
	}
}

if ondash
{
	var idx = dashtime++/dashtime_max;
	var lx, ly, len;
	len = idx * dash_len;
	if idx > 0
	{
		for(var i = max(0, idx - 1) * dash_len; i < idx * dash_len; i+=3)
		{
			lx = dash_xp + lengthdir_x(i, dash_dir);
			ly = dash_yp + lengthdir_y(i, dash_dir);
			
			
			if dash_onkiller && place_meeting(dash_xp + lengthdir_x(max(i - 64, 0), dash_dir), ly + lengthdir_y(max(i - 64, 0), dash_dir), obj_player)
			{
				kill_force(dash_len div 64, dash_dir);
				
				sprite_change(spr_headhunter_sword_attack, 0, 0);
				echo_self_pos(lx, ly, 15, c_red, 0.0, [0.4, 0]);
				
				screenshake(6, 2);
			}
			else
				echo_self_pos(lx, ly, 5, c_red, 1.0, [0.05, 0]);
		}
	}

	var lx, ly;
	lx = lengthdir_x(len, dash_dir);
	ly = lengthdir_y(len, dash_dir);
	
	x = dash_xp + lx;
	y = dash_yp + ly;

	if dashtime_max < dashtime
	{
		if place_meeting(x, y, obj_player)
			kill_force(dash_len div 64, dash_dir);
		ondash = false;
	}
}

if onrolling
{	
	if sprite_index != spr_headhunter_rolling
	{
		onlook = true;
		onrolling = false;
		hspd = 0;
		vspd = 0;
		oninv = false;
		scr_headhunter_next();
	}
}

if onjump2
{
	if sprite_index == spr_headhunter_jump
	{
		if jump_idx++ > 5
		{
			sprite_change(spr_headhunter_gunrotate)
			shoot_rotate = 0;
		}
	}
	
	if sprite_index == spr_headhunter_gunrotate
	{
		var lx, ly, dir, dis;
		dir = pdir(hspd, vspd);
		dis = pdis(hspd, vspd);
		for(var i = 0; i < 2; i++)
		{
			if shoot_rotate <= 180
			{
				lx = lengthdir_x(dis * (1-i)/2, dir + 180)
				ly = lengthdir_y(dis * (1-i)/2, dir + 180)
				shoot_rotate += 5;
				image_index = shoot_rotate / 180 * 6;
				
				if look
					d = -shoot_rotate;
				else
					d = 180 + shoot_rotate;

				with(danmaku_create(x + lx, y + ly, d, 28, 1))
				{
					layer = layer_get_id(L_BELOW);
					sprite_index = spr_bullet_headhunter;
					image_angle = direction + 180;
					//image_blend = c_yellow;
					sprite_set_size(2, 2);
				}
			}
			else
				break;
		}
	}
}

if ongrav
{
	if vspd > 0
	{
		if tile_meeting(0, vspd)
		{
			var s = sign(vspd);
			if s != 0
			{
				y = floor(y);

				while(!tile_meeting(0, s))
				{
					y += s;
				}
				y -= s;

				vspd = 0;
				
				if onjump2
				{
					sprite_change(spr_headhunter_jump_after);
					
					ongrav = false;
					hspd = 0;
					vspd = 0;
					onjump2 = false;	
				}
			}
		}
	}
}
y += vspd;

if onjump1
{
	if tile_meeting(hspd, 0)
	{
		sprite_change(spr_headhunter_wall);
		
		if 0 < hspd
		{
			x = 959;
			look = -1;
		}
		else
		{
			x = 128;
			look = 1;
		}
			
		//x += sign(hspd) * 28;
		onlook = false;
		hspd = 0;
		vspd = 0;

		onjump1 = false;
		alarm[1] = 10;
	}
}
else
{
	if bbox_left < w_left
	{
		x = w_left + (x - bbox_left);
		if hspd < 0
			hspd = 0;
	}
	else if bbox_right > w_right
	{
		x = w_right - (bbox_right - x);
		if hspd > 0
			hspd = 0;
	}
}
x += hspd;


if bbox_left < w_left
{
	x = w_left + bbox_left - x;
}

if bbox_right > w_right
{
	x = w_right + x - bbox_right;
}