//HSL SHADER
attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour; 
//BLUR SHADER
//attribute vec3 in_Position;
//attribute vec2 in_TextureCoord;

uniform float u_vRatio;

varying vec2 v_uv0;
varying vec2 v_uv0Ratio;


void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
      
    //HSL SHADER
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
    //BLUR SHADER
    v_uv0       = in_TextureCoord;    
    v_uv0Ratio  = in_TextureCoord * vec2(1.0, u_vRatio); 
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//HSV SHADER
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

//BLUR SHADER
varying vec2 v_uv0;
varying vec2 v_uv0Ratio;
uniform float u_threshold;

void main()
{
    //BLUR PART
    float pi = 3.14159265359;
    float circle = 2.0 * pi;
    
    vec4 blur = vec4(0.0,0.0,0.0,0.0);
    
    //int SAMPLES = 8;
    int SAMPLES = 4;

    for (int i = 0; i < SAMPLES; i++)
    {
        highp float angle = (circle / float(SAMPLES)) * float(i);
        
        highp float shift_x = cos(angle) * u_threshold;
        highp float shift_y = sin(angle) * u_threshold;
        highp vec2 shiftUV =  v_uv0 + vec2(shift_x, shift_y);
        
        blur += texture2D(gm_BaseTexture, shiftUV) / float(SAMPLES);
    }
    
    vec4 Complete = blur;
    
       //gl_FragColor = Complete;
       // vec4 basecol = texture2D(gm_BaseTexture, v_vTexcoord) * v_vColour;
       //SWAP
      vec4 basecol = Complete * v_vColour; //BLEND COLOR
     
     gl_FragColor.rgb = mix(basecol.rgb * vec3(2.0), vec3(1.0), max(0.0, max(max(basecol.r, basecol.g), basecol.b) * 2.0 - 1.0));
     gl_FragColor.a = basecol.a;

}

