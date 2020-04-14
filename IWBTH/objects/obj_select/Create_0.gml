enable = true;
dw_x = 0;
dw_y = 0;

check_w = 0;
check_h = 0;
name = "";

onmouse = false;
onact = false;

type = Select.nothing;
goto = Title.nothing;
script = -1;
toggle = false;
percent = 0;
list_idx = 0;

list = -1;

save_num = 0;
save_time = 0;
save_death = 0;
save_new = true;

arr = 0;
idx = 0;

enum Select {
	nothing,
	game,
	list,
	goto,
	script,
	toggle,
	scroll
}