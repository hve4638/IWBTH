//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 u_color;
//uniform float u_cmerge;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	//float R, G, B, A;
	//R = (u_color.r + gl_FragColor.r) / 2.0;
	//G = (u_color.g + gl_FragColor.g) / 2.0;
	//B = (u_color.b + gl_FragColor.b) / 2.0;
	gl_FragColor.r *= u_color.r;
	gl_FragColor.g *= u_color.g;
	gl_FragColor.b *= u_color.b;
	gl_FragColor.a *= u_color.a;
}
