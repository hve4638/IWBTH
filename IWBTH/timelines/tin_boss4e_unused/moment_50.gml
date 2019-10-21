switch(++t)
{
    case 1: a1.On=false; break;
    case 2: a2.On=false; break;
    case 3: a3.On=false; break;
    case 4: a4.On=false; break;
}
if t<=4 timeline_position-=29;
else {t=0; timeline_position+=29;}

