//
// Simple passthrough vertex shader
//

attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float var_0;
void main()
{

 float var_1 = (1.1 + 0.1 * var_0) / 1.2;
 float var_2 = 1.00;
 gl_FragColor = vec4(vec3(texture2D(gm_BaseTexture, v_vTexcoord).rgb.r / var_0,texture2D(gm_BaseTexture, v_vTexcoord).rgb.g / (var_0 * var_2),var_1 * texture2D(gm_BaseTexture, v_vTexcoord).rgb.b), texture2D( gm_BaseTexture, v_vTexcoord).a);
}
