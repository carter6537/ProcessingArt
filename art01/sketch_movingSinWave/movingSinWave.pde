float sw, alpha;
float yStep = 10;
float arcSize = 200;

void setup() {
  size(600, 600);
}

void draw() {
  background(148, 247, 255);
  noFill();
  stroke(100);
  
  for (int y=-50; y<height+arcSize; y+=yStep) {
    sw = map(sin(radians(y+alpha)), -1, 1, 2, yStep);
    strokeWeight(sw);
    for (int x=0; x<width+arcSize; x+=arcSize) {
      arc(x, y, arcSize/2, arcSize/2, 0, PI);
      arc(x+arcSize/2, y, arcSize/2, arcSize/2, PI, TWO_PI);
    }
  }
  alpha++;
}

void keyPressed() {
  save("movingSinWave0.jpg");
  print("saved image");
}
