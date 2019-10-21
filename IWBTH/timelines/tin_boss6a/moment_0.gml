p_t=Me.x;
p_i=0;
t=ds_list_create();
var k;
if phase==0 {k=5; p_j=5; scp_shake(1,100,1);}
else if phase==1 {k=6; p_j=5; scp_shake(1,100,1);}
else if phase==2 {k=6; p_j=4; scp_shake(2,100,1);}
else if phase==3 {k=7; p_j=4; scp_shake(4,100,1);}
for(var i=-k;i<=k;i++) ds_list_add(t,i);
ds_list_shuffle(t);

circle_index=0;
circle_time=100;

