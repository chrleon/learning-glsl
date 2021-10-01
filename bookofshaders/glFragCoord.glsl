#ifdef GL_ES
  precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

vec4 red =   vec4(1, 0.0, 0.0, 1.0);
vec4 green = vec4(0.0, 1.0, 0.0, 1.0);
vec4 blue = vec4(0.0, 0.0, 1.0, 1.0);
vec4 gul = red + green;


void main(){
  vec2 st = gl_FragCoord.xy/u_mouse.xy;
  gl_FragColor = gul;
  gl_FragColor = vec4(st.x+(abs(sin(u_time))), st.y+cos(u_time), tan(u_time),1.0);
}

