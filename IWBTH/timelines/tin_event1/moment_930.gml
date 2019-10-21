with(p_a) {direction=90; movspd=0.3; maxspd=15;}


p_a=instance_create(128,-96,obj_autogolem);
p_b=instance_create(800-128,-96,obj_autogolem);
with(p_a) {speed=14.5; direction=-90; movspd=-0.3; type=1; HP=5; MAXHP=5; sleep=50;}
with(p_b) {speed=14.5; direction=-90; movspd=-0.3; type=1; HP=5; MAXHP=5; sleep=50;}

