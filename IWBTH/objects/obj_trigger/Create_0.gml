enable = false;
trig = false;
trigger_condition = TriggerCondition.nothing;
trigger_end =  TriggerEnd.disable;

trigger_script_on = no;
trigger_script_off = no;
trigger_script = no;

delay = -1;
delay_max = -1;

trig_p = false;
target = noone;
chain = false;
chain_list = -1;

enum TriggerCondition {
	target,
	nothing
}

enum TriggerEnd {
	collision,
	disable,
	loop,
	destroy
}
