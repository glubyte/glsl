#version 450 core

in float state;

out vec4 color;

void main()
{
  if (state == 0.0)
  {
    color = vec4(0.05f, 0.05f, 0.05f, 1.0f);
  }
  else
  {
    color = vec4(0.07f, 0.07f, 0.07f, 1.0f);
  }
}
