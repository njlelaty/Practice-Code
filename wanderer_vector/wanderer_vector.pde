PVector loc;
PVector vel;
PVector acc;

int sz=50;

void setup () {

  size(800, 600);
 
}

void draw () {
  
  loc = new PVector(width/2, height/2);
  vel = new PVector(0,0);
  acc = new PVector(random(-5,5),random(-5,5));
  acc.set(random(-5,5),random(-5,5));
  vel.add(acc);
  vel.limit(10);
  loc.add(vel);
  


  ellipse(loc.x, loc.y, sz, sz);
 
  
  if (loc.x-sz/2 > width) {
    loc.x=-sz/2;
  }
  if (loc.x+sz/2<0) {
    loc.x=width+sz/2;
  }
  if (loc.y-sz/2> height) {
    loc.y=-sz/2;
  }
  if (loc.y+sz/2<0) {
    loc.y=sz/2;
  }
}

