draw_set_color(color);

draw_circle(x - 0.5, y - 0.5, radius, 0);
var c = radius * 0.25;

for(var i = 0; i < 360; i += 90)
{
	var dir = i + image_angle;
	draw_primitive_begin(pr_trianglestrip);
		var xx, yy;
		xx = lengthdir_x(radius + c, dir);
		yy = lengthdir_y(radius + c, dir);
		draw_vertex(x + xx, y + yy);
		
		xx = lengthdir_x(radius - c, dir - 15);
		yy = lengthdir_y(radius - c, dir - 15);
		draw_vertex(x + xx, y + yy);

		xx = lengthdir_x(radius - c, dir + 15);
		yy = lengthdir_y(radius - c, dir + 15);
		draw_vertex(x + xx, y + yy);
	draw_primitive_end();
}

draw_set_reset();