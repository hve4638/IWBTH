/// @description scp_shake(power,time,preference);
/// @param power
/// @param time
/// @param preference
var a=argument0, b=argument1, c=argument2;
with(sys_camera){
    if c || shake<a || (shake==a && stime<b) {
        shake=a;
        stime=b;
    }
}
