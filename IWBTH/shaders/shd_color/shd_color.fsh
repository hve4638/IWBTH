//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 u_color;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	gl_FragColor.r = u_color.r;
	gl_FragColor.g = u_color.g;
	gl_FragColor.b = u_color.b;
	gl_FragColor.a *= u_color.a;
}
