/// @description scp_pattern_reset(cnt,pattern1,pattern2...);
/// @param cnt
/// @param pattern1
/// @param pattern2...
var n=argument[0];
ds_list_clear(pattern_per);
ds_list_clear(pattern_idx);
pattern_pre=-1;

for(var i=1;i<=n;i++) {
    ds_list_add(pattern_per,(n-1)*5);
    ds_list_add(pattern_idx,argument[i]);
} 
