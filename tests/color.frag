#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;

void main(){
  vec2 st = gl_FragCoord.xy / u_resolution;
  float PI = 3.141592;
  float TWO_PI = PI * 2.0;
  vec3 red = vec3(1.0, 0.0,0.0);
  vec3 green = vec3(0.0,1.0,0.0);
  vec3 blue = vec3(0.0,0.0,1.0);

  vec3 yellow = vec3(red.x, green.y,0.0);
  vec3 magenta = vec3(red.x, 0.0, blue.z);

  vec3 gradientOne = mix(yellow, magenta,sin(st.x - u_time));
  float percent = abs(sin(st.x * TWO_PI * 4.0));
  // percent = abs(sin(st.x * PI * 4.0));
  vec3 gradientTwo = mix(green, blue, sin(u_time + percent));
  float percentTwo = abs(cos(u_time/2.));

  vec3 finalGradient = mix(gradientTwo, gradientOne, percentTwo);
  vec3 finalgradient = finalGradient;

  gl_FragColor = vec4(finalgradient,1.0);
}