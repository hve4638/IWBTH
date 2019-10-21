var dssize;
dssize=ds_list_size(sndlist);
for(var i=0;i<dssize;i++) {
    var t=ds_list_find_value(sndlist,i);
    if sndcnt[? t]!=0 {
        audio_play_sound(t,0,0);
        sndcnt[? t]--;
    }
}

ds_list_clear(sndlist);
ds_map_clear(sndcnt);

