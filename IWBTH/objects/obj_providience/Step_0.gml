if 0 < ex_todo && todo_is_playing()
{
	var td = todo_current();
	
	if todo_signal(todo_current())
		cout("sign!", ex_todo);
	switch(ex_todo)
	{
		case 1:
			if todo_signal(td)
				hspd_add = todo_get_value(todo_current()) * image_xscale;
		break;
		
		case 2:
			if todo_signal(td)
			{
				if todo_get_value(td) == 0
				{
					var t = 0;
					for(var i = 1 ; i < 32; i+=2)
					{
						var a, b;
						var w = i * 48;
						a = instance_create_layer(bbox_right + w, 450, L_ABOVE, obj_lasergener);
						b = instance_create_layer(bbox_left - w, 450, L_ABOVE, obj_lasergener);
						a.sprite_index = spr_temp2;
						b.sprite_index = spr_temp2;
						a.shakepow = 16;
						a.shaketime = 1;
						a.firedelay = 25;
						b.firedelay = 25;
						
						t += 1;
					}
					screenshake(1.5, 30);
				}
			}	
		break;
	}
}

if hspd_add != 0
{
	hspd = hspd_add;

	if abs(hspd_add) < hspd_dec
		hspd_add = 0;
	else if 0 < hspd_add
		hspd_add -= hspd_dec;
	else if 0 > hspd_add
		hspd_add += hspd_dec;
}
else
	hspd = 0;

x += hspd;