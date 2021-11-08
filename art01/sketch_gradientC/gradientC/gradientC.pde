/**
 * Radial Gradient
 *
 * 11/4/21
 */
 
int dim;
color c1, c2;

void setup() {
  size(600, 600);
  background(0);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  ellipseMode(RADIUS);
  noLoop();
  
  // Define Colors
  // COLOR MODE IS SET TO HSB
  c2 = color(206, 97, 100);
  c1 = color(140, 97, 100);
  
}

void draw() {
  background(0);
  drawGradient(width/2, height/2, 290, c1, c2);
}

void drawGradient(float x, float y, int rad, color c1, color c2) {
  fill(c2);
  for (int r = rad; r > 0; --r) {
    ellipse(x, y, r, r);
    float inter = map(r, 0, rad, 0, 1);
    color c = lerpColor(c1, c2, inter);
    fill(c);
  }
}

void keyPressed() {
  save("gradientC1.jpg");
  print("image saved");
}
