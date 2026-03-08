#version 330 core
in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uTexture;
uniform vec2 uTexelSize;

void main()
{
    vec2 uv = TexCoord;

    vec3 sum = vec3(0.0);
    sum += texture(utexture, uv).rgb;
    sum += texture(uTexture, uv + vec2(uTexelSize.x, 0.0)).rgb
    sum += texture(uTexture, uv + vec2(0.0, uTexelSeize.y)).rgb
    sum += texture(uTexture, uv + uTexelsize).rgb;

    FragColor = vec4(sum * 0.25, 1.0);
}
