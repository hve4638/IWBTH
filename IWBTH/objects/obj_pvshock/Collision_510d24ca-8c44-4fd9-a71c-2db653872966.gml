var spd, dir;
spd = abs(hspd) / 4;
dir = pdir(sign(hspd), -2);// darctan2(8, -sign(hspd));

kill(spd, dir);
//cout("??", arctan2(2, -sign(hspd)));