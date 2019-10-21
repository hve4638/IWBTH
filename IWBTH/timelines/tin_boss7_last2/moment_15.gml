onfield_x1=max(onfield_x1-30,0);
onfield_x2=min(onfield_x2+30,800);

if onfield_x1!=0 || onfield_x2!=800 timeline_position--;
else {
    onholy=true;
    t_i=800;
}

