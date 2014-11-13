int y, yspeed, yaccel;

void setup () {
  size(800, 600);
  y=50;
  yspeed=0;
  yaccel=2;
}

void draw () {
  background(0);
  ellipse(width/2, y, 50, 50);
  y+=yspeed;
  yspeed+=yaccel;
  if (y>height) {
    yspeed*=-1;
  }

  if (y<0) {
    yspeed=2;
  }
}

