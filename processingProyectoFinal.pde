float aa=-.2;
float ab=.2;

void setup() {
  size(650,650);
  background(0,4);
  stroke(107,122);
  noFill();
  smooth(23);
  form(width/2,height,-HALF_PI,9);
}

void draw() {
}

void form(float x,float y, float a, int c) {
  float nx=x+45*cos(a);
  float ny=y+45*sin(a);
  line(x,y,nx,ny);
  if (c>0) {
    form(nx,ny,a+aa,c-1);
    form(nx,ny,a+ab,c-1);
  }
}

void mousePressed() {
  background(0,4);
  aa=random(-PI,+PI);
  ab=random(-PI,+PI);
  ab=random(-PI,+PI);
  aa=random(-PI,+PI);
  form(width/2,(height/3)*2,-HALF_PI,9);
}