#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

void main(){
  float PI = 3.141592;
  vec2 st = gl_FragCoord.xy / u_resolution;
  vec2 bb = u_mouse / u_resolution;
  float value = st.y;
  // value = smoothstep(0.1,0.109, value);
  // value = step(0.5, value);
  // value = mod(value,0.7);
  // value = fract(value * 2.0);
  // value = sin(value * 3.14);
  // value = ceil(sin(value * PI * 8.));
  // value = ceil(sin(value * PI));
  // value = floor(sin(value * PI - u_time ));
  value = abs(sin(value * PI * 0.9 - u_time ));

  vec3 color = vec3(value);
  gl_FragColor = vec4(color,1.0);
}