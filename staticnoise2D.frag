#version 450 core

in vec2 fragPos;
in bool state;
out vec4 color;

void main()
{
  if (state == true)
  {
    color = vec4(0.05f, 0.05f, 0.05f, 1.0f);
  }
  else
  {
    color = vec4(0.07f, 0.07f, 0.07f, 1.0f);
  }
}
