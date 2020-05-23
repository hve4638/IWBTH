name = "-";
enter_instant = true;

enable = true;
isclear = false;

text_idx = EnterText.challenge;
goto = no;

oncleardata = false;
show_holo = false;
holo_surf = no;
holo_spr = 0;

show_alpha = 0;
stageindex = 0;

oneffect = false;
show_info = false;

time_idx = 0;

enum EnterText {
	challenge = 0,
	enter = 1
}

image_alpha = 0;
layer = layer_get_id(L_BELOW);