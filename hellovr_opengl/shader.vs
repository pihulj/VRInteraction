#version 410 core
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 texCoords;

out vec2 TexCoords;

uniform mat4 matrix;

void main()
{
    //gl_Position = matrix * vec4(position.x / 10.0f, position.y / 10.0f, position.z / 10.0f - 1.0f, 1.0f);
    gl_Position = matrix * vec4(position.x, position.y, position.z - 1.0f, 1.0f);
    //gl_Position = matrix * vec4(position.x * 15.0, -position.y * 15.0, (position.z + 2) * 15.0, 1.0f);
    TexCoords = texCoords;
}
