float x, y;
float vx, vy;
float ax, ay;

int sz=50;

void setup () {

  size(800, 600);
  x=width/2;
  y=height/2;
}

void draw () {


  ellipse(x, y, sz, sz);
 
  x+=vx;
  y+=vy;  

  vx+=ax;
  vy+=ay;  
  
  ax=random(-5, 5);
  ay=random(-5, 5);  
  vx = constrain(vx, -10, 10);
  vy = constrain(vy, -10, 10);
  if (x-sz/2 > width) {
    x=-sz/2;
  }
  if (x+sz/2<0) {
    x=width+sz/2;
  }
  if (y-sz/2> height) {
    y=-sz/2;
  }
  if (y+sz/2<0) {
    y=sz/2;
  }
}

