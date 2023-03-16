attribute vec3 in_Position;
attribute vec2 in_TextureCoord;

varying vec2 v_texcoord;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 1.0);
    v_texcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_texcoord;

uniform float time;
uniform vec2 mouse_pos;
uniform vec2 resolution;
uniform float radial_blur_offset;
uniform float radial_brightness;
uniform float bloom;


void main()
{ 
    vec2 uv = vec2(v_texcoord);
//    uv.x *= (resolution.x/resolution.y);
    vec2 radial_size = vec2(1.0/resolution);
    radial_size.x *= (resolution.x/resolution.y);
    vec2 radial_origin = vec2(mouse_pos/resolution);
    vec4 colour = vec4(0.0);
    
    float blur_amount = 30.0;
    //float blur_amount = 10.0;
    
    uv += radial_size * 0.5 - radial_origin;
    
   
    
    for (float i = 0.0; i < blur_amount; i++)
    {
        float offset = 1.0 - radial_blur_offset * (i / (blur_amount - 1.0));
        colour += texture2D(gm_BaseTexture, uv * offset + radial_origin);  
    }
 
  //gl_FragColor = colour / (blur_amount - 1.0) * radial_brightness;
  //FRAG SWAP  
  //BLOOM - START
    vec4 oricol = colour / (blur_amount - 1.0) * radial_brightness;
    
    vec4 sum = vec4(0.0);
    vec2 q1 = v_texcoord;
    
    vec3 col;
    
    // samples
    
    for(float k=-4.0;k<4.0;k+=1.0) //was 4 //8 works best
    {
        for (float j=-3.0;j<3.0;j+=1.0)//was 3 //8 works best
        {

            //sum += texture2D(gm_BaseTexture,vec2(j,i)*0.0025 + vec2(q1.x,q1.y)) * 0.08;
            //sum += texture2D(gm_BaseTexture,vec2(j,k)*0.0025 + vec2(q1.x,q1.y)) * 0.07;
            sum += texture2D(gm_BaseTexture,vec2(j,k)*0.004 + vec2(q1.x,q1.y)) * 0.25;//intensity
        }
   }
 
  if (oricol.r < 0.4) {
       gl_FragColor = sum*sum*0.012*bloom + oricol;
   } else {
       if (oricol.r < 0.6) {
          gl_FragColor = sum*sum*0.009*bloom + oricol;
       } else {
          gl_FragColor = sum*sum*0.0075*bloom + oricol;
       }
   }

}

