var spd, dir;
spd = abs(hspd) / 4;
dir = point_direction(0, 0, -2, sign(hspd));// darctan2(8, -sign(hspd));
cout("dir: ", dir);

kill(spd, dir);
//cout("??", arctan2(2, -sign(hspd)));