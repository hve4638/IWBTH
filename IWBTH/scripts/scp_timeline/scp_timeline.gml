/// @description scp_timeline(index);
/// @param index
if argument[0]==noone {
    timeline_running=0;
    return 0;
}

timeline_index=argument[0];
timeline_loop=0;
timeline_position=0;
timeline_speed=1;
timeline_running=1;
