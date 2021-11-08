 color[] colorList = {
   //TRIAD
   color(255, 211, 110),
   color(216, 84, 255),
   color(59, 255, 178)
   
   // SQUARE
   //color(49, 25, 255),
   //color(0, 255, 125),
   //color(255, 49, 25),
   //color(255, 220, 13)
   
   // MONOCHROME
   //color(87, 37, 128),
   //color(208, 150, 255),
   //color(174, 75, 255),
   //color(104, 74, 128),
   //color(139, 59, 204)
 };

void setup() {
  size(600, 600, P3D);
}

void draw() {
  lights();
  background(0);
  camera(mouseX+800, mouseY+800, 800, // eyeX, eyeY, eyeZ
         0.0, 0.0, 0.0, // centerX, centerY, centerZ
         0.0, 1.0, 0.0); // upX, upY, upZ
         
  for (int count = round(random(360)); count>0; --count) {
   color c = colorList[floor(random(colorList.length))];
   stroke(c);
   strokeWeight(floor(random(10)));
   line(0, 0, 0, random(600), random(600), random(600));
  }
}
