BouncyBall[] balls = new BouncyBall[100];


void setup () {
  size(800, 600);
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new BouncyBall();
  }
}

void draw () {
  background(0);
  for (int i = 0; i < balls.length; i++) {
    balls[i].display();
    balls[i].move();
    balls[i].wallBounce();
  }





  //  if (loc.dist(loc2) < sz/2 + sz2/2) {
  //    if (loc.x < loc2.x) {
  //      vel.x = -abs(vel.x);
  //      vel2.x = abs(vel2.x);
  //    } else {
  //      vel.x = abs(vel.x);
  //      vel2.x = -abs(vel2.x);
  //    }
  //    if (loc.y < loc2.y) {
  //      vel.y = -abs(vel.y);
  //      vel2.y = abs(vel2.y);
  //    } else {
  //      vel.y = abs(vel.y);
  //      vel2.y = -abs(vel2.y);
  //    }
  //  }
}

class BouncyBall {
  PVector loc, vel;
  float sz;

  BouncyBall() {
    loc = new PVector(width/2, height/2);
    vel = PVector.random2D();
    sz = random(10, 30);
  }
  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
  }

  void wallBounce() {
    if (loc.x+sz/2 > width || loc.x - sz/2 <0) {
      vel.x *=-1;
    }

    if (loc.y +sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }
}

