//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float Red = 0.9;
	float Blue = 0.9;
	float Green = 0.9;
	float Alpha = gl_FragColor.r;
	
	vec4 Color = vec4(Red, Green, Blue, Alpha);
	gl_FragColor = Color;
}
