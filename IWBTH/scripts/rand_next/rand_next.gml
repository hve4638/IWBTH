var i, j, r;
r = irandom(rand_sum);

for(i = 0; i < rand_size; i++)
{
	var cnt = rand_cnt[| i];

	if cnt < r
		r -= cnt;
	else
		break;
}

for(j = 0; j < rand_size; j++)
	rand_cnt[| j] += 1;

rand_cnt[| i] -= rand_size;
rand_p = rand_idx[| i];
return rand_p;
