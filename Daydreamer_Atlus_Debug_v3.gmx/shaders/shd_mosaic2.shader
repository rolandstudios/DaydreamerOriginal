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
uniform float aspect;
uniform vec2 mouse_pos;
uniform vec2 resolution;
uniform float pixel_amount;
uniform float bloom;

void main()
{ 
    vec2 res = vec2(aspect, resolution.x/resolution.y);
    vec2 size = vec2(res.x/pixel_amount, res.y/pixel_amount);
    vec2 uv = v_texcoord - mod(v_texcoord,size);
    //gl_FragColor = texture2D( gm_BaseTexture, uv );
    //FRAG SWAP  
    //BLOOM - START
    
    vec4 oricol = texture2D( gm_BaseTexture, uv );
    
    vec4 sum = vec4(0.0);
    vec2 q1 = v_texcoord;
    
    vec3 col;
    
    for(int i=-4;i<4;i++) {
        for (int j=-4;j<4;j++) {
            sum += texture2D(gm_BaseTexture,vec2(j,i)*0.004 + vec2(q1.x,q1.y)) * 0.25;
        }
   }
   
   /*OLD
 for(int i=-4;i<4;i++) {
        for (int j=-3;j<3;j++) {
            sum += texture2D(gm_BaseTexture,vec2(j,i)*0.004 + vec2(q1.x,q1.y)) * 0.25;
        }
   }
   */
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
