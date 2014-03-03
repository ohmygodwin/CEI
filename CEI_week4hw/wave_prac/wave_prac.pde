float x, y, m, n, c, d, q, r;
float a;

void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  a+=.01;
  translate(width/4, height/4);
  x = sin(a*300)*100;
  y = cos(a*1)*100;
  noStroke();
  fill(200, 150, 180);
  ellipse(x, y, 8, 8);
  
  println(millis());
}
