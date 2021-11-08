
int MAXBALLS = 12;
Entity[] entities = new Entity[MAXBALLS];

void setup() {
  size(800, 800);
  for (int i=0; i<MAXBALLS; i++) {
    entities[i] = new Entity(random(800), random(800), 15);
  }
}

void draw() {
  background(0);
  for (Entity e : entities) {
    e.update();
    makeConnections();
    e.display();
    
    e.checkBoundaryCollision();
  }
}

void makeConnections() {
  for (int i = 0; i < entities.length - 1; i++) {
    Entity ball1 = entities[i];
    for (int j = i+1; j < entities.length; j++) {
      Entity ball2 = entities[j];
      double dis = ball1.distance(ball2);
      if (dis < 200) {
          for (let i = 0; i < 100; i ++) {
      stroke(lerpColor(ball1.c, ball2.c, i/100.0));
        line(
          ((100 - i) * ball1.pos.x + i * ball2.pos.x) / 100.0,
          ((100 - i) * ball1.pos.y + i * ball2.pos.y) / 100.0, 
          ((100 - i - 1) * ball1.pos.x + (i + 1) * ball2.pos.x) / 100.0, 
          ((100  - i - 1) * ball1.pos.y + (i + 1) * ball2.pos.y) / 100.0);
      }
    }
  }
}
