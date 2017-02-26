#version 450 core
// requires pre-allocated noise array utilizing external random generators
layout (location = 0) in bool noise2D;
// specify screen space for which noise array was generated
uniform int width;
uniform int height;

out bool state;

int y;
int x;

void main()
{
  state = noise2D;
  
  // extrapolate screen coordinates
  y = floor(gl_VertexID / width);
  x = gl_VertexID - y * width;
  
  // built in clip space normalization
  gl_Position = vec4(x / (width / 2) - 1, y / (height / 2) - 1, 0.0f, 1.0f);
  gl_PointSize = 1;
}
