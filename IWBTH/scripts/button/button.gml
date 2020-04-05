///@param key
var k = argument[0];
var on = false;

if !enablekeyinput
	return false;

switch(currentinput)
{
	case Inputtype.keyboard:
		if keyboard_check(key[k])
			on = true;
	break;

	case Inputtype.gamepad:
		var dv = sys_global.current_gamepad;
		var m = keygp[k];
		var s = is_array(m) ? array_size(keygp[k]) : 1;

		for(var i = 0; i < s; i++)
		{
			var bt = is_array(m) ? m[i] : m;

			if abs(bt) == 100
			{
				var axis = gamepad_axis_value(dv, gp_axislh);
				if (bt < 0 && axis < -0.25) || (bt > 0 && axis > 0.25)
					on = true;
			}
			else if abs(bt) == 101
			{
				var axis = gamepad_axis_value(dv, gp_axislv);
				if (bt < 0 && axis < -0.25) || (bt > 0 && axis > 0.25)
					on = true;
			}
			else if gamepad_button_check(dv, bt)
				on = true;
		}
	break;
}

return on;