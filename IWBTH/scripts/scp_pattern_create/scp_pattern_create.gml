/// @description scp_pattern_create(cnt,pattern1,pattern2...);
/// @param cnt
/// @param pattern1
/// @param pattern2...
var n=argument[0];
pattern_per=ds_list_create();
pattern_idx=ds_list_create();
pattern_pre=-1;

for(var i=1;i<=n;i++) {
    ds_list_add(pattern_per,n*5);
    ds_list_add(pattern_idx,argument[i]);
} 

pattern_d1=0;
pattern_d2=0;
