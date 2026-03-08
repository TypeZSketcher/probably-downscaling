#version 120

attribute vec2 aPos;
attribute vec2 aUV;

varying vec2 TexCoord;

void main()
{
    TexCoord = aUV;
    gl_position = vec4(aPos, 0.0, 1.0)
}