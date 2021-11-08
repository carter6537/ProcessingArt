// ball web By Carter Ireland
// 11/6/2021

// initiate variables, make an empty list for balls
int MAXBALLS = 27; // increase with caution, max(max-1)
float RANGE = 250;
Entity[] entities = new Entity[MAXBALLS];

// setup canvas, add balls to list with random starting positions
void setup() {
  fullScreen();
  //size(700, 700);
  for (int i=0; i<MAXBALLS; i++) {
    entities[i] = new Entity(random(800), random(800), 15);
  }
}

void draw() {
  background(0);
  for (Entity e : entities) {
    e.checkBoundaryCollision();
    e.update();
    makeConnections(e);
    e.display();
  }
}

// drawing lines between balls
void makeConnections(Entity ball1) { // main ball is the one from draw loop
  colorMode(HSB, 255, 100, 100);
  for (Entity ball2 : entities) {      // selects ball to compare distance
    if (ball1 != ball2) {
      double dis = ball1.distance(ball2); // checks distance
      if (dis < RANGE) {  // if balls are within range
        float distance = (float) dis;
        float brightness = 100-((distance/RANGE)*100); // get distance/maxDistance then transform to 0-100
        stroke(0, 0, brightness);  //brightness needs to be value 0-100
        strokeWeight(3);
        line(ball1.pos.x, ball1.pos.y, ball2.pos.x, ball2.pos.y); //draw line between balls
        ball1.display(); // render the connected balls again to avoid the lines appearing ontop of the balls
        ball2.display();
      } else {
        ball1.display();
      }
    }
  }
}
