if other.alarm[0]==-1 && 0.5<other.image_alpha {
    other.alarm[0]=60;
    djump=true;
    if other.object_index == obj_hmore {deffect=1;}
    else if other.object_index == obj_vmore {deffect=2; other.alarm[0]=120;}
    else deffect=0;
}

