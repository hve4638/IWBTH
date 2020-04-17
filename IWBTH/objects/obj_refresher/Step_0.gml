y -= floaty;
floaty = floating(time_idx, 100) * 5;
y += floaty;

if enable
	image_alpha = min(1.0, image_alpha + 0.04);
else
	image_alpha = 0.0;

time_idx++;