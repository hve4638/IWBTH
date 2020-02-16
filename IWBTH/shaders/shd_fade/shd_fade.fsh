//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 u_color;

void main()
{
	vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord );
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (Color.a != 0.0)
	{
		if (Color.a == 1.0)
		{
			gl_FragColor.r = Color.r;
			gl_FragColor.g = Color.g;
			gl_FragColor.b = Color.b;
		}
		else
		{
			float A, B;
			A = gl_FragColor.r;
			B = Color.r;

			if (A < B)
				gl_FragColor.r = (B - A) * Color.a + A;
			else
				gl_FragColor.r = (A - B) * (1.0 - Color.a) + B;
				
				
			A = gl_FragColor.g;
			B = Color.g;

			if (A < B)
				gl_FragColor.g = (B - A) * Color.a + A;
			else
				gl_FragColor.g = (A - B) * (1.0 - Color.a) + B;
				
				
			A = gl_FragColor.b;
			B = Color.b;

			if (A < B)
				gl_FragColor.b = (B - A) * Color.a + A;
			else
				gl_FragColor.b = (A - B) * (1.0 - Color.a) + B;
		}
	}
}
