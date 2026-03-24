//
// Simple Palette Swap shader, takes in a uniform target for the sprites 
// Base color palette, and a second uniform for the replacement palette 
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D samp_targets;
uniform sampler2D samp_replacements;

void main()
{
    vec4 sampled = texture2D(gm_BaseTexture, v_vTexcoord);
    for(float i = 0.0; i < 4.0; i+=1.0){
        vec3 target = texture2D(samp_targets, vec2(i /4.0,0.0)).rgb;
        if(distance(target, sampled.rgb) < 0.01) {
            sampled.rgb = texture2D(samp_replacements, vec2(i/4.0,0.0)).rgb;
        }
    }
    gl_FragColor = v_vColour * sampled;
}
