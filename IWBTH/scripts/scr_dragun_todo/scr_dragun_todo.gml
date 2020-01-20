var td = todo_current();

while(todo_signal_exists(td))
{
	var signal = todo_signal(td);

	if signal < 0
	{
		#region
		switch(signal)
		{
			case -1:
				state = todo_receive(td);
			break;
			case -2:
				var st = todo_receive(td);
				var spd = todo_receive(td);
				var lk = todo_receive(td);
				struct_play(st, spd, lk);
			break;
			case -3:
				struct_stop_all();
			break;
			case -4:
				state = stateD.normal;
				head_free = false;
				smoothstruct = true;
			break;
			case -5:
				head_free = todo_receive(td);
			break;
			case -6:
				smoothstruct = todo_receive(td);
			break;
			case -7:
				head_free = todo_receive(td);
			break;
			case -8:
				shoottype = todo_receive(td);
			break;
			case -9:
				var a = todo_receive(td);
				var spr = todo_receive(td);
				
				with(dragun[? a])
					sprite_change(spr, 0, image_speed);
			break;
			case -10:
				cout("TEST");
			break;
			
			case -11:
				var a = todo_receive(td);
				var spd = todo_receive(td);
				
				with(dragun[? a])
					image_speed = spd;
			break;
		}
		#endregion
	}
	else
	{

	}
}	//While End