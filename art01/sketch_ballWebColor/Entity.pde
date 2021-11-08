class Entity {
  PVector pos;
  PVector vel;
  float rad;
  //float r;
  //float b;
  //float g;
  //color c;
  
  Entity(float x, float y, float radius) {
    pos = new PVector(x,y);
    vel = PVector.random2D();
    vel.mult(3);
    rad = radius;
    //r = random(256);
    //b = random(256);
    //g = random(256);
    //c = color(r,b,g);
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
    fill(55);
    ellipse(pos.x, pos.y, rad, rad);
  }
}
