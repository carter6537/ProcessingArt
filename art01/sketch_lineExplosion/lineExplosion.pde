 // DEFINE COLORS
 // RGB MODE

 color[] colorList = {
    //TRIAD
   //color(255, 211, 110),
   //color(216, 84, 255),
   //color(59, 255, 178)
   
   // SQUARE
   //color(49, 25, 255),
   //color(0, 255, 125),
   //color(255, 49, 25),
   //color(255, 220, 13)
   
   // MONOCHROME
   color(87, 37, 128),
   color(208, 150, 255),
   color(174, 75, 255),
   color(104, 74, 128),
   color(139, 59, 204)
 };
 
void setup() {
 size(600, 600);
 noLoop();

}

void draw() {
 background(255); 
 for (int count = round(random(360)); count>0; --count) {
   color c = colorList[floor(random(colorList.length))];
   stroke(c);
   strokeWeight(floor(random(10)));
   line(width/2, height/2, random(600), random(600));
  }
}

void keyPressed() {
  save("lineExplosion1.jpg");
  print("image saved");
}
