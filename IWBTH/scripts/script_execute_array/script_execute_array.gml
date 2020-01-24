///@desc script_execute_array
///@argu ind
///@argu arg[]
var ind;
var arg;
ind = argument[0];

if argument_count == 0
{
	script_execute(ind);
	return 0;
}
else
{
	arg = argument[1];
	
	if is_array(arg)
	{
		
		switch(arr_size(arg))
		{
			case 15: script_execute(ind, arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8], arg[9], arg[10], arg[11], arg[12], arg[13], arg[14]); break;
			case 14: script_execute(ind, arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8], arg[9], arg[10], arg[11], arg[12], arg[13]); break;
			case 13: script_execute(ind, arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8], arg[9], arg[10], arg[11], arg[12]); break;
			case 12: script_execute(ind, arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8], arg[9], arg[10], arg[11]);	break;
			case 11: script_execute(ind, arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8], arg[9], arg[10]); break;
			case 10: script_execute(ind, arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8], arg[9]); break;
			case 9: script_execute(ind, arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7], arg[8]); break;
			case 8: script_execute(ind, arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6], arg[7]); break;
			case 7: script_execute(ind, arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]); break;
			case 6: script_execute(ind, arg[0], arg[1], arg[2], arg[3], arg[4], arg[5]); break;
			case 5: script_execute(ind, arg[0], arg[1], arg[2], arg[3], arg[4]); break;
			case 4: script_execute(ind, arg[0], arg[1], arg[2], arg[3]); break;
			case 3: script_execute(ind, arg[0], arg[1], arg[2]); break;
			case 2: script_execute(ind, arg[0], arg[1]); break;
			case 1: script_execute(ind, arg[0]); break;
			case 0: script_execute(ind); break;
			
			default:
			cout("script_execute_array(): something wrong...");
		}
	}
	else
	{
		script_execute(ind, arg);
		return 0;
	}
}