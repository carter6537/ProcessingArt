class Entity {
  PVector pos;
  PVector vel;
  float rad;
  
  Entity(float x, float y, float r) {
    pos = new PVector(x,y);
    vel = PVector.random2D();
    vel.mult(3);
    rad = r;
  }
  
  double distance(Entity ball2) {
    return Math.pow(Math.pow((pos.x-ball2.pos.x),2)+Math.pow((pos.y-ball2.pos.y),2),0.5);
  }
  
  void update() {
    pos.add(vel);
  }
  
  void checkBoundaryCollision() {
    if (pos.x > width-rad) {
      pos.x = width-rad;
      vel.x *= -1;
    } else if (pos.x < rad) {
      pos.x = rad;
      vel.x *= -1;
    } else if (pos.y > height-rad) {
      pos.y = height-rad;
      vel.y *= -1;
    } else if (pos.y < rad) {
      pos.y = rad;
      vel.y *= -1;
    }
  }
  
  void display() {
    noStroke();
    colorMode(HSB, 255, 100, 100);
    fill(0, 0, 100);
    ellipse(pos.x, pos.y, rad, rad);
  }
}
