if !instance_exists(obj_player) exit;

follow=true;
var r=choose(1,-1);
if Me.x<320 r=-1;
else if 1216-320<Me.x r=1;

if !start xx=clamp(Me.x+160*r,96,room_width-96);
else xx=clamp(Me.x+160,96,room_width-96);

if phase==3 alarm[0]=60;
else alarm[0]=75;

