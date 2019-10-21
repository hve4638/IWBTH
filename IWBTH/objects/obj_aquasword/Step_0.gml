if image_angle+1<todir {image_angle+=abs(image_angle-todir)/dv;} else if image_angle<todir {todir=image_angle;}
if image_angle-1>todir {image_angle-=abs(image_angle-todir)/dv;} else if image_angle>todir {todir=image_angle;}


if instance_exists(target) {
    x=target.x;
    y=target.y;
}

image_alpha=clamp(image_alpha+movalp,0,0.4);

