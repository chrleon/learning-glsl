PShader shader;

void setup() {
  size(640,480, P3D);
  noStroke();

  //shader = loadShader("Uniforms.glsl");
  shader = loadShader("glFragCoord.frag");
}

void draw() {
  shader.set("u_resolution", float(width), float(height));
  shader.set("u_mouse", float(mouseX), float(mouseY));
  shader.set("u_time", millis()/1000.0);
  shader(shader);
  rect(0,0,width,height);
}
