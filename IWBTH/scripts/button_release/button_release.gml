///@param key
var k = argument[0];
var on = false;

if !enablekeyinput
	return false;

switch(currentinput)
{
	case Inputtype.keyboard:
		if keyboard_check_released(key[k])
			on = true;
	break;

	case Inputtype.gamepad:
		var dv = sys_global.current_gamepad;
		var m = keygp[k];
		var s = is_array(m) ? array_size(keygp[k]) : 1;

		for(var i = 0; i < s; i++)
		{
			var bt = is_array(m) ? m[i] : m;

			if gamepad_button_check_released(dv, bt)
				on = true;
		}
	break;
}

return on;