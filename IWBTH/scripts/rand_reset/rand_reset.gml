/// @param ind1
/// @param ind2...
ds_list_clear(rand_cnt);
ds_list_clear(rand_idx);
rand_size = argument_count;
rand_sum = 0;
rand_p = -1;

var add = (rand_size-1) * 2;
for(var i = 0; i < rand_size; i++)
{
    ds_list_add(rand_cnt, add);
    ds_list_add(rand_idx, argument[i]);
	
	rand_sum += add;
}