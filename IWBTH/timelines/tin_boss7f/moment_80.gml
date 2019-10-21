if choose(0,1) instance_create(-32,irandom_range(100,508),obj_bloodabs);
if choose(0,1) instance_create(800+32,irandom_range(100,508),obj_bloodabs);
if choose(0,1) instance_create(irandom_range(100,700),-32,obj_bloodabs);
if choose(0,1) instance_create(irandom_range(100,700),608+32,obj_bloodabs);
with(obj_bloodabs) target=other.id;

t_i++;
if (phase<=2 && t_i<=10) || (3<=phase && t_i<=16) {
    if 3<=phase && t_i==8 {
        for(var i=32;i<800;i+=64) {
            var k=instance_create(i,480-32,obj_lasergener2);
            k.FUSE=35;
        }
    }
    else if 3<=phase && t_i==13 {
        for(var i=0;i<800;i+=64) {
            var k=instance_create(i,480-32,obj_lasergener2);
            k.FUSE=35;
        }
    }
    timeline_position-=10;
}

