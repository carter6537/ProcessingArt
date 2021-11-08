// Bounce Ball
//

int rad = 10;
float xpos, ypos;

float xspeed = 2;
float yspeed = 2;

int xdirection = 1;
int ydirection = 1;

void setup() {
  size(800,800);
  background(0);
  noStroke();
  ellipseMode(RADIUS);
  xpos = width/2;
  ypos = height/2;
}

void draw() {
  
  background(0);
  
  // Update the position of the shape
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }

  // Draw the shape
  ellipse(xpos, ypos, rad, rad);
}
