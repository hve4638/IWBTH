///@argu ontrue
var affectrand = argument_count > 0 ? argument[0] : true;
var i, r;
r = irandom(rand_sum);

for(i = 0; i < rand_size; i++)
{
	var cnt = rand_cnt[| i];

	if cnt < r
		r -= cnt;
	else
		break;
}

rand_p = rand_idx[| i];

if affectrand
	rand_adjust(i);

return rand_p;
