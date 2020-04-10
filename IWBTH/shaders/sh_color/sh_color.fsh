//u_color = [float, float, float, flaot]
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 u_color;

void main()
{
	vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord );
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (gl_FragColor.a != 0.0 || u_color.a == 0.0)
	{
		if (u_color.a == 1.0)
		{
			gl_FragColor.r = u_color.r;
			gl_FragColor.g = u_color.g;
			gl_FragColor.b = u_color.b;
		}
		else 
		{
			float A, B, Alpha;
			A = gl_FragColor.r;
			B = u_color.r;
			Alpha = u_color.a;

			if (A < B)
				gl_FragColor.r = (B - A) * Alpha  + A;
			else
				gl_FragColor.r = (A - B) * (1.0 - Alpha) + B;
				
				
			A = gl_FragColor.g;
			B = u_color.g;

			if (A < B)
				gl_FragColor.g = (B - A) * Alpha + A;
			else
				gl_FragColor.g = (A - B) * (1.0 - Alpha) + B;
				
				
			A = gl_FragColor.b;
			B = u_color.b;

			if (A < B)
				gl_FragColor.b = (B - A) * Alpha + A;
			else
				gl_FragColor.b = (A - B) * (1.0 - Alpha) + B;
		}
	}
}
