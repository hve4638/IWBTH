if script_exists(trig)
{
	if onargu
		script_execute_array(trig, argu);
	else
		script_execute(trig);
}

instance_destroy();