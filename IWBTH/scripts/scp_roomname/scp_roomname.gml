/// @description scp_roomname(room)
/// @param room
switch(argument[0]){
case rmstage01a:
case rmstage01b:
case rmstage01c:
case rmboss1:
case rmboss1b:
    return es("stage","1");
    
case rmstage02a:
case rmstage02b:
case rmboss02:
    return es("stage","2");
case rmstage03a:
case rmstage03b:
case rmstage03c:
case rmstage03d:
case rmboss03:
    return es("stage","3");
case rmstage04a:
case rmstage04b:
case rmstage04c:
case rmstage04d:
case rmboss04:
case rmstage04e:
    return es("stage","4");

case rmstage06a:
case rmstage06b:
case rmstage06c:
case rmstage06d:
case rmstage06e:
case rmboss06:
    return es("stage","5");

case rmstageFinal0:
case rmstageFinal1:
case rmstageFinal2:
case rmstageFinal3:
    return es("stage","6");

case rmteleport:
case rmteleport2:
    return es("stage","tp");

case rmaltar:
    return es("stage","altar");
default:
    return es("stage","u");
}
