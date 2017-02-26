#version 450 core

layout (location = 0) in bool noise2D;

uniform int width;
uniform int height;

out bool state;

void main()
{
  state = noise2D;
  
  gl_Position = vec4(gl_VertexID / (width / 2) - 1,
  gl_PointSize = 1;
}
