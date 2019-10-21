i=choose(0.05,0.15,0.25);
if i==L {L=i; L+=choose(-0.1,0.1);}
else L=i;

if 0.25<L {L-=0.2;}
else if L<0.05 {L+=0.2;}

ON=2;

