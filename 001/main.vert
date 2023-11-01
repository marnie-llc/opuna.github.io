#define PI 3.141592653589793

attribute vec3 position;
attribute float index;

uniform float time;

varying vec3 vPosition;
varying float vIndex;
varying float vTime;

void main() {
  vPosition = position;
  vIndex = index;
  vTime = time;

  vec3 pos = position;

  float swingWidth = 1.0;
  float distance = 0.6 - sin(pos.x - time * 2.0) * 0.1;
  float misalignment = index * 0.05;
  float speed = time * 0.4;
  pos.y += sin((pos.x - misalignment) * PI * swingWidth - speed) * distance;

  gl_Position = vec4(pos, 1.0);

  gl_PointSize = 2.0;
}

