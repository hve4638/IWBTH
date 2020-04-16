if 0 < blur_alpha
{
	draw_edgeblur(blur_alpha, c_black);
	
	if abs(blur_alpha - toblur) < 0.01
		toblur = random_range(0.25, 0.35);
	else
		blur_alpha += sign(toblur - blur_alpha) * 0.001;
}