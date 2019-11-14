///@param key
var k = argument[0];

if !enablekeyinput
	return false;

return keyboard_check_released(key[k]);