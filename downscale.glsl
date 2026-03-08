#version 120

uniform sampler2D sceneTex;
uniform vec2 texelSize;

varying vec2 TexCoord;

void main()
{
    vec3 color = vec3(0.0);

    color += texture2D(sceneTex, TexCoord + texelSize * vec2(-1.0,-1.0)).rgb;
    color += texture2D(sceneTex, TexCoord + texelSize * vec2(1.0,-1.0)).rgb;
    color += texture2D(sceneTex, TexCoord + texelSize * vec2(-1.0,1.0)).rgb;
    color += texture2D(sceneTex, TexCoord + texelSize * vec2(1.0,1.0)).rgb;

    color *=0.25;

    gl_fragColor = vec(color,1.0);
}
