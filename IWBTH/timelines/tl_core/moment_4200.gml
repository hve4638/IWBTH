///@desc clear

alarm_trigger(75, scr_gotostageresult);

sys_global.canrestart = false;
stageclear(1, 0);