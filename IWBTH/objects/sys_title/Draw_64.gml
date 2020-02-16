if 0 < blur_alpha
{
	draw_edgeblur(blur_alpha, c_black);
	
	if abs(blur_alpha - toblur) < 0.1
		toblur = random_range(0.45, 0.65);
	else
		blur_alpha += sign(toblur - blur_alpha) * 0.01;
}