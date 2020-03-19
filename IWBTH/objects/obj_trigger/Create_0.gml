enable = true;
trig = false;
trigger_condition = TriggerCondition.nothing;
trigger_end = TriggerEnd.destroy;

trigger_script_on = no;
trigger_script_off = no;
trigger_script = no;

delay = 0;
delay_max = -1;

trig_p = false;
target = noone;

time_idx = 0;

enum TriggerCondition {
	always,
	target,
	nothing
}

enum TriggerEnd {
	collision,
	disable,
	loop,
	destroy
}