/// @description scp_issave_corret(index);
/// @param index
var tmap = argument[0];
var tmp=ds_list_create();
var i=0;
ds_list_add(tmp,"x","y","room","isflip","wuss","guy","cantp");
for(i=0;i<7;i++) ds_list_add(tmp,"key"+string(i));
for(i=0;i<3;i++) ds_list_add(tmp,"orb"+string(i));
for(i=0;i<10;i++) ds_list_add(tmp,"bosskill"+string(i));

for(i=0;i<ds_list_size(tmp);i++)
{
    if is_undefined(tmap[? tmp[| i]])
        return false;
}

return true;
