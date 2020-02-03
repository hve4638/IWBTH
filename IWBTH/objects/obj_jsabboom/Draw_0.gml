draw_set_color(color);

draw_circle(x, y, radius, 0);

for(var i = 0; i < 360; i += 90)
{
	var dir = i + image_angle;
	draw_primitive_begin(pr_trianglestrip);
		var xx, yy;
		xx = lengthdir_x(radius + 4, dir);
		yy = lengthdir_y(radius + 4, dir);
		draw_vertex(x + xx, y + yy);
		
		xx = lengthdir_x(radius - 2, dir - 4);
		yy = lengthdir_y(radius - 2, dir - 4);
		draw_vertex(x + xx, y + yy);

		xx = lengthdir_x(radius - 2, dir + 4);
		yy = lengthdir_y(radius - 2, dir + 4);
		draw_vertex(x + xx, y + yy);
	draw_primitive_end();
}

draw_set_reset();