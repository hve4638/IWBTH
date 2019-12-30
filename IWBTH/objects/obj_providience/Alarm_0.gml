var dis = (Player.x - x);

switch(next_action)
{
	case ActionP.walk:
		state = StateP.walk;
		hspd_move = max(abs(dis) - 96, 196) * sign(dis);
		sprite_change(spr_providience_walk, 0, 1);
	break;
	case ActionP.dash:
		state = StateP.dash;
		hspd_move = abs(abs(dis) - 96) * sign(dis);
		sprite_change(spr_providience_dash, 0, 1);
	break;
	
	case ActionP.teleport:
		on_teleport = true;
		tp_x = Player.x + 96 * choose(1,-1);
		next_fix = ActionP.attack;
		alarm[1] = 10;
	break;
	
	case ActionP.attack:
		state = StateP.attack;
		next_cnt = 0;
		todo_play(next_attack);
	break;
}