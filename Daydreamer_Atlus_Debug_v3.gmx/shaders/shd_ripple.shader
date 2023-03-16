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
uniform float wave_amount;
uniform float wave_distortion;
uniform float wave_speed;
uniform float bloom;

void main()
{ 
    vec2 uv = v_texcoord;
    uv.x *= (resolution.x/resolution.y);
    float centre_x = (mouse_pos.x / resolution.x) * (resolution.x/resolution.y);
    float centre_y = mouse_pos.y / resolution.y;
  
    vec2 dir = v_texcoord - vec2(0.5);
    float dist = distance(uv, vec2(centre_x,centre_y));
    vec2 offset = dir * (sin(dist * wave_amount - time * wave_speed)) / wave_distortion;
 
  //gl_FragColor = texture2D(gm_BaseTexture,v_texcoord + offset);
  //FRAG SWAP  
  //BLOOM - START
    vec4 oricol = texture2D(gm_BaseTexture,v_texcoord + offset);
    
    vec4 sum = vec4(0.0);
    vec2 q1 = v_texcoord;
    
    vec3 col;
    
    for(int i=-4;i<4;i++) {
        for (int j=-3;j<3;j++) {
            sum += texture2D(gm_BaseTexture,vec2(j,i)*0.004 + vec2(q1.x,q1.y)) * 0.25;
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
