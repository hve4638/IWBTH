//
// Simple passthrough fragment shader
//

uniform sampler2D tex_screen;
uniform float water_surface;
uniform vec2 resolution;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying vec2 fragCoord;
uniform float time;

void main()
{
	vec2 tv = vec2(fragCoord.x,fragCoord.y);
	vec2 uv;
	//float addx = cos((v_vTexcoord.y) * 15.0 + time);
	float addy = water_surface - (water_surface - v_vTexcoord.y);
	
	uv = tv.xy;
	//uv.x += addx;
	uv.y += addy;
	
	uv /= resolution.xy;
	
	//vec2 uv = fragCoord.xy / resolution.xy;
    gl_FragColor = v_vColour * texture2D( tex_screen, uv);
}

