#version 330 core
layout (location = 0) in vec3 position;
out vec3 TexCoords;

//uniform mat4 projection;
//uniform mat4 view;
uniform mat4 matrix;

void main()
{
    //vec4 pos = projection * view * vec4(position, 1.0);
    vec4 pos = matrix * vec4(position.x, position.y + 1.0, position.z, 1.0);
    gl_Position = pos.xyww;
    TexCoords = position;
}
