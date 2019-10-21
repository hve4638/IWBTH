//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 Color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    if (Color.r > 0.99 && Color.g > 0.99 && Color.b > 0.99)
    {
        gl_FragColor = vec4(0.0,0.0,0.0,0.0);
    }
    else
    {
        gl_FragColor = Color;
    }
       
}

