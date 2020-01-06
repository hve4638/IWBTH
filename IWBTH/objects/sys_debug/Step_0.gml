if keyboard_check_pressed(vk_f1)
	show_info = !show_info;

if keyboard_check_pressed(vk_f2)
{
	save_read();
	cout("read save" + string(save_idx) + ".");
}
if keyboard_check_pressed(vk_anykey)
{
	switch(keyboard_key)
	{		
		case ord("U"):
			with(instance_create_layer(0, 0, L_SYS, obj_trigger))
			{
				trigger_condition = TriggerCondition.always;
				trigger_end = TriggerEnd.loop;

				trigger_script = scr_gotostageresult;
				goto_idx = 0;
				goto_delay = 100;
			}
		break;
		case vk_f3: on_convkey = !on_convkey;
		break;
		
		case vk_f4: on_customview = !on_customview;
		break;
		
		case vk_f5: on_deal = !on_deal;
		break;
		
		case vk_f7: on_teleport = !on_teleport;
		break;
		
		case vk_f8: ongod = !ongod;	
		break;
		
		case vk_f6: room_goto(rm_stageresult);
		break;

		case vk_f10: room_goto(rm_soundtest);
		break;
		
		case vk_f11: room_goto(rm_editroom_dragun);
		break;
		
	}
	
}

if keyboard_check_pressed(vk_f9)
{
	if !instance_exists(sys_record)
		instance_create_layer(0,0,L_SYS, sys_record);
	else
		instance_destroy(sys_record);
}

if on_customview
{
	if keyboard_check_pressed(ord("V"))	
	{
		cv_enable = !cv_enable;

		if cv_enable
		{		
			if instance_exists(sys_camera)
			{
				cv_ins = sys_camera.id;
				instance_deactivate_object(cv_ins);
			}
			
			var cam = view_camera[0];
			cv_px = camera_get_view_x(cam);
			cv_py = camera_get_view_y(cam);
			cv_pw = camera_get_view_width(cam);
			cv_ph = camera_get_view_height(cam);
			camera_set_view_pos(cam, cv_x1, cv_y1);
			camera_set_view_size(cam, cv_x2 - cv_x1, cv_y2 - cv_y1);
		}
		else
		{
			if cv_ins != noone
				instance_activate_object(cv_ins)
			cv_ins = noone;
			
			var cam = view_camera[0];
			camera_set_view_pos(cam, cv_px, cv_py);
			camera_set_view_size(cam, cv_pw, cv_ph);
		}
	}
}
if keyboard_check(vk_control)
{
	if keyboard_check_pressed(ord("S"))
		with(obj_player)
		{
			save();
			instance_create_depth(x, bbox_top - 8, 0, obj_savetext);
			echo_self(50, 1, c_white);
		}

	if keyboard_check_pressed(ord("K"))
		kill();
	
	if on_customview
	{
		if mouse_check_button(mb_left)
		{
			if mouse_check_button_pressed(mb_left)
			{
				cv_x1 = mouse_x;
				cv_y1 = mouse_y;
			}
			cv_x2 = mouse_x;
			cv_y2 = mouse_y;
		}
		else if mouse_check_button_released(mb_left)
		{
			var tx, ty;
			tx = cv_x1;
			ty = cv_y1;
			if cv_x1 == mouse_x || cv_y1 == mouse_y
				exit;
			
			cv_x1 = tx < mouse_x ? tx : mouse_x;
			cv_y1 = ty < mouse_y ? ty : mouse_y;
			cv_x2 = tx > mouse_x ? tx : mouse_x;
			cv_y2 = ty > mouse_y ? ty : mouse_y;
			cv_y2 = cv_y1 + (cv_x2 - cv_x1) * view_h / view_w;
		}
	}
}

if on_teleport && mouse_check_button(mb_left)
{
	with(obj_player)
	{
		x = mouse_x;
		y = mouse_y;
	}
}