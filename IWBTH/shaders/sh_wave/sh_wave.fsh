//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;

uniform float u_width;
uniform float u_cycle;
uniform float u_time;

void main()
{
	vec2 check_pos = v_vTexcoord + vec2(cos((v_vPosition.y + u_time) * u_cycle) * u_width, 0.0);
    vec4 datPixel =  v_vColour * texture2D( gm_BaseTexture, check_pos);

	gl_FragColor = datPixel;
}
