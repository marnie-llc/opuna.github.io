precision mediump float;

varying vec3 vPosition;
varying float vIndex;
varying float vTime;

void main() {
  float misalignment = vIndex * 0.2;
  float speed = vTime * 2.0;
  float color = 1.0 - sin(vPosition.x - misalignment - speed) * 0.75;

  gl_FragColor = vec4(0.0, color, color, 1.0);
}

