var v;
v = (other.y - (bbox_bottom + bbox_top) / 2) * 0.6;

switch(sprite_index)
{
case spr_mask_providience_attack10: //spr_providience_attack10
	kill(10, pdir(image_xscale * 32, v));
	break;

case spr_mask_providience_attack11: //spr_providience_attack11
	kill(10, pdir(image_xscale * 32, v));
	break;

case spr_mask_providience_attack00:
case spr_mask_providience_attack20:
	kill(10, pdir(image_xscale * 32, -5));
	break;

case spr_mask_providience_attack30:
	kill(6, pdir(0, 1));
	break;

default:
	kill();
	break;
}