//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 outputcolor;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (gl_FragColor.a != 0.0)
	{
		float Red = outputcolor.x;
		float Blue = outputcolor.y;
		float Green = outputcolor.z;
		float Alpha = gl_FragColor.r;
	
		vec4 Color = vec4(Red, Green, Blue, Alpha);
		gl_FragColor = Color;
	}
}
