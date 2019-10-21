image_alpha=alpha*T/20;
image_xscale=sign(image_xscale)*(abs(image_xscale)+0.05);
image_yscale=sign(image_yscale)*(abs(image_yscale)+0.05);

if T--<=0 instance_destroy();

