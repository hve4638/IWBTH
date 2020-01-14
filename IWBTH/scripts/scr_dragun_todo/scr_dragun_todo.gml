var td = todo_current();

while(todo_signal_exists(td))
{
	var signal = todo_signal(td);

	if signal < 0
	{
		#region
		switch(signal)
		{
			case -2:
				var st = todo_receive(td);
				var spd = todo_receive(td);
				var lk = todo_receive(td);
				struct_play(st, spd, lk);
			break;
		}
		#endregion
	}
	else
	{

	}
}	//While End