if t_i<=15
{
    platmin = clamp(platmin-60,4800,5600);
    platmax = clamp(platmax+60,4800,5600);
    
    t_i++;
    with(i) {angle+=0.5; OnAfter=1;}
    timeline_position--;
} else timeline_position += 50;

