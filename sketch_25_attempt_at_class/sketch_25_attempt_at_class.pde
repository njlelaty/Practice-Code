

ArrayList<Particle> allParticles = new ArrayList<Particle>();

void setup() {
  size(800, 600);
}

void draw() {
 

  if (mousePressed) {
    allParticles.add(new Particle());
  }


  for (int i = allParticles.size()-1; i>=0; i--) {
    Particle currentParticle = allParticles.get(i);
    currentParticle.display();
    currentParticle.move();
    if (currentParticle.loc.y> height + currentParticle.sz/2) {
      allParticles.remove(i);
    }
  }
 background(0);

}


class Particle {
  PVector loc, vel, acc;
  float sz;

  Particle () {
    loc = new PVector (width/2, height*.1);
    vel= new PVector(random(-3, 3), random(-4, -2));
    acc= new PVector(0, .1);
    sz=20;
  }

  void display () {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move () {
    vel.add(acc);
    loc.add(vel);
  }
}

