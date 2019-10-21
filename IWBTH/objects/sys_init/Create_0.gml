sprite_index = -1;
///
/*
preroom = ds_map_create();
t = room_first;
while(1)
{
    show_message(string(t) + ": " + string(room_get_name(t)));
    preroom[? t] = room_get_name(t);
    if room_last==t break;
    else t = room_next(t);
}
clipboard_set_text(ds_map_write(preroom));
exit;

/* */
///Create System object
instance_create(0,0,sys_global);
instance_create(0,0,sys_part);
instance_create(0,0,sys_sound);

/* */
///Version check & Save convert
scp_publicload();
scp_localload();
with(sys_global) {
    if prever<0.87 scp_convert_0_86();
    if prever<0.9 scp_convert_0_9();
}

var n="clear";
if file_exists(n) { isclear = true; }
else { isclear = false; }

/* */
///goto title
room_goto(title);

/* */
/*  */
