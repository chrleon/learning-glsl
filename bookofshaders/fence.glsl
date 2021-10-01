// This code is your fence; it's important to observe and understand it. You will come back over and over to this space between 0.0 and 1.0. You will master the art of blending and shaping this line.

// I wrote all this code. Did not copy and paste it. I feel I learn best when I type the code. Makes me aware of ; and codeblocks etc.

// https://thebookofshaders.com/05/

#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

// Plot a line on Y using a value between 0.0-1.0
float plot(vec2 st, float pct){
  return  smoothstep( pct-0.02, sin(pct+u_time), st.y ) 
          - smoothstep( pct, pct+0.02, st.y );
}

void main() {
	vec2 st = gl_FragCoord.xy/u_resolution;

  float y = smoothstep(0.1,0.9,st.x);

  vec3 color = vec3(y,(st.x*(sin(u_time),y);

  // Plot a line
  float pct = plot(st,y);
  color = (1.0-pct)*color+pct*vec3(0.0,1.0,0.0);

	gl_FragColor = vec4(color,1.0);
}