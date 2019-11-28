///@param percentage

if argument_count == 0
	sys_global.show_bosshp = false;
else
{
	sys_global.show_bosshp = true;	
	sys_global.bosshp = argument[0];
}