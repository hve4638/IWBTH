/// @description scp_warmgener(count,x,y,target,speed,direction,angle);
/// @param count
/// @param x
/// @param y
/// @param target
/// @param speed
/// @param direction
/// @param angle
var c=argument0, wx=argument1, wy=argument2, wt=argument3, ws=argument4, wd=argument5, wa=argument6;
if 0<c {
    var i=instance_create(wx,wy,obj_darkwarm);
    i.lead=false; i.target=wt;
    i.Tolead=scp_warmgener(c-1,wx,wy,wt,ws,wd,wa);
    i.sleep=c;
    return i;
} else {
    var i=instance_create(wx,wy,obj_darkwarm);
    i.lead=true; i.target=wt;
    i.speed=ws; i.direction=wd;
    i.dir=wa;
    i.sleep=0;
    return i;
}
