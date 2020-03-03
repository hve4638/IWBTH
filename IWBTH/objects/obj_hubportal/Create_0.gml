name = "-";
enter_instant = true;

enable = true;

text_idx = EnterText.challenge;
goto = no;

show_holo = false;
holo_surf = no;
holo_spr = 0;

show_alpha = 0;

enum EnterText {
	challenge = 0,
	enter = 1
}

image_alpha = 0;
layer = layer_get_id(L_BELOW);