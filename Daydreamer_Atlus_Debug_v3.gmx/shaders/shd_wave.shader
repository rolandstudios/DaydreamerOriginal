attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_texcoord;
varying vec4 v_color;

void main()
{ 
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 1.0);
    v_texcoord = in_TextureCoord;
    
    v_color = in_Colour;
    v_texcoord = in_TextureCoord;
}
  
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_texcoord;
varying vec4 v_color;

uniform float time;
uniform vec2  mouse_pos;
uniform vec2  resolution;
uniform float wave_amount;
uniform float wave_distortion;
uniform float wave_speed;
uniform float bloom;


void main()
{ 
    vec2 uv = v_texcoord;
    uv.x = uv.x+cos(uv.y*wave_amount+time*wave_speed)/wave_distortion;
    uv.y = uv.y+sin(uv.x*wave_amount+time*wave_speed)/wave_distortion;
 
    gl_FragColor = texture2D(gm_BaseTexture,uv);
    
  //Bloom -------------------------------------------------------------------------------
  /* 
    vec4 sum = vec4(0.0);
    vec2 q1 = uv;
    vec4 oricol = texture2D(gm_BaseTexture,vec2(q1.x,q1.y));
    
    for(int i=-4;i<4;i++) 
        {
        for (int j=-3;j<3;j++) 
            {
            sum += texture2D(gm_BaseTexture,vec2(j,i)*0.004 + vec2(q1.x,q1.y)) * 0.25;
            }
        }
 
  if (oricol.r < 0.4) 
        {
            //gl_FragColor = (sum*sum*0.012)*(wave_amount*.2) + oricol;
            gl_FragColor = (sum*sum*0.012)*(wave_amount*.1) + oricol;
            //gl_FragColor = (sum*sum*0.012)*bloom + oricol;
        } 
        else 
        {
  if (oricol.r < 0.6) 
        {
            //gl_FragColor = (sum*sum*0.009)*(wave_amount*.2) + oricol;
            gl_FragColor = (sum*sum*0.009)*(wave_amount*.1) + oricol;
            //gl_FragColor = (sum*sum*0.009)*bloom + oricol;
        } 
        else 
        {   
            // (wave_amount*0.2) = 100% Bloom
            //gl_FragColor = (sum*sum*0.0075)*(wave_amount*.2) + oricol;
            gl_FragColor = (sum*sum*0.0075)*(wave_amount*.1) + oricol;
             //gl_FragColor = (sum*sum*0.0075)*bloom + oricol;
        }
        }
        
        */
  //-------------------------------------------------------------------------------------
 
  //-------------------------------------------------------------------------------------

}
