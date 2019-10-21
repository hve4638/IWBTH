/// @description scp_pattern_rand();
var t, r;
t=ds_list_size(pattern_per);
r=irandom(t*t*5-1);

pattern_d1=r; //debug
for(var i=0;i<ds_list_size(pattern_per);i++) {
    var k=ds_list_find_value(pattern_per,i);
    if r<=k {
        if t<k {
            for(var j=0;j<ds_list_size(pattern_per);j++) {
                if i==j continue;
                ds_list_replace(pattern_per,j,ds_list_find_value(pattern_per,j)+1);
                k--;
            }
            pattern_d2=i; //debug
            ds_list_replace(pattern_per,i,k);
        }
        return ds_list_find_value(pattern_idx,i);
    } else r-=k;
}

return ds_list_find_value(pattern_idx,ds_list_size(pattern_per)-1);
