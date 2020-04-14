if keyboard_check_pressed(vk_anykey)
{
	switch(keyboard_key)
	{
		case vk_f1: show_info = !show_info;
		break;
		
		case vk_f2: show_save = !show_save;
		break;

		case ord("U"):
			with(sys_global)
				onui = !onui;
		break;
		
		case ord("V"):
			with(all)
			{
				visible = true;
				image_alpha =1.0;
			}
		break;

		case ord("H"):
			hidedebug = !hidedebug;
		break;

		case vk_f3:
			for(var i = 1; i <= 5; i++)
				stage_clear[i] = true;
		break;
		
		case vk_f4:
			bossmeet_reset();
		break;
		
		case vk_f5: on_deal = !on_deal;
		break;
		
		case vk_f7: on_teleport = !on_teleport;
		break;
		
		case vk_f8: ongod = !ongod;	
		break;
		
		case ord("I"):
			if room != rm_title
				break;
			save_idx = INSTANTPLAY_SAVESLOT;
			scr_gamestart();
		break;
		
		case ord("Y"):
			//
		break;
		
		/*
		case vk_f9:
		if !instance_exists(sys_record)
			instance_create_layer(0,0,L_SYS, sys_record);
		else
			instance_destroy(sys_record);
		break;
		*/
		
		//case vk_f6: room_goto(rm_stageresult);
		//break;
		
		case vk_f11:
			var arr, i = 0;
			arr[0] = 0;
			with(all)
				arr[i++] = object_get_name(object_index);
			
			var n = array_size(arr);
			var str = "";
			for(i = 0; i < n; i++)
				str += strmerge(arr[i]);
			clipboard_set_text(str);
			cout("copy instance list to clipboard.");
		break;
		
		case vk_f12:
			if volum_music != 0
				config_mastervolum = 0;
			else
				config_mastervolum = 1.0;

				volum_update();
				config_write();
		break;
	}
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
			echo_self(50, c_white);
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

if mouse_check_button_pressed(mb_right) && 0
{
	with(obj_player)
	{
		echo_self_pos(mouse_x, mouse_y, 50, [1, 0], c_red, 1.0);
	}
}

if mouse_check_button_pressed(mb_left) && 0
{
	instance_create_layer(mouse_x, mouse_y, L_ABOVE, obj_jsabboom);
}

if on_teleport && mouse_check_button(mb_left)
{
	with(obj_player)
	{
		x = mouse_x;
		y = mouse_y;
	}
}
