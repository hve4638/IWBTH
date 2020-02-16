/// @param sound
/// @param max*
var snd, mx;
snd = argument[0];
mx = argument_count > 1 ? argument[1] : 2;

with(sys_sound)
{
    ds_list_add(sndlist, snd);

    sndcnt[? snd] = mx;
}
