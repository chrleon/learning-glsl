// https://thebookofshaders.com/03/

#ifdef GL_ES
  precision mediump float;
#endif

#define PROCESSING_COLOR_SHADER

uniform vec2 u_resolution; // canvas size
uniform vec2 u_mouse; // mouse position in screen pixels
uniform float u_time; // time in seconds since load

void main(){
  vec2 st = gl_FragCoord.st / u_resolution;
  gl_FragColor = vec4(abs(sin(u_time*0.0001)), abs(cos(u_mouse.y/100.0)), 0, 0);  
}