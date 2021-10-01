#ifdef GL_ES
precision lowp float;
#endif

vec4 red(){
  // this is reduntant :)
  return vec4( 1.0, 0.0, 0.0, 1.0 );
}

void main(){
  //gl_FragColor = vec4(1, 0, 0, 0);
  gl_FragColor = red();
}

// https://thebookofshaders.com/02/