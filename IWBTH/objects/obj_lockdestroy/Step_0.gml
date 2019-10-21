if sleep<=0 {
    image_alpha+=movalp;
    if image_alpha<0 instance_destroy();
} else sleep--;

