if todo_is_playing()
{
	scr_headhunter_todo();
	
	if todo_end(todo_current())
	{
		scr_headhunter_next();
	}
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
			
			if place_meeting(dash_xp + lengthdir_x(max(i - 64, 0), dash_dir), ly, obj_player)
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
		ondash = false;
}

if onrolling
{	
	if sprite_index != spr_headhunter_rolling
	{
		onlook = true;
		onrolling = false;
		hspd = 0;
		vspd = 0;
		
		scr_headhunter_next();
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
			x = 959;
		else
			x = 128;
			

		//x += sign(hspd) * 28;
		onlook = false;
		hspd = 0;
		vspd = 0;

		onjump1 = false;
		alarm[1] = 10;
	}
}

x += hspd;






