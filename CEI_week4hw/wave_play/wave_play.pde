float x, y, m, n, c, d, q, r;
float a;

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  a+=.002;
  
  pushMatrix();
  translate(width/4, height/4);
  x = sin(a*300)*100;
  y = sin(a*1)*100;
  noStroke();
  fill(232, 205, 27);
  ellipse(x, y, 5, 5);
  popMatrix();
  
  pushMatrix();
  translate(width/4, 3*height/4);
  m = sin(a*500)*100;
  n = cos(a*1)*100;
  noStroke();
  fill(138, 109, 109);
  ellipse(m, n, 5, 5);
  popMatrix();
  
  pushMatrix();
  translate(3*width/4, height/4);
  c = cos(a*400)*100;
  d = sin(a*1)*100;
  noStroke();
  fill(130, 124, 59);
  ellipse(c, d, 5, 5);
  popMatrix();
  
  pushMatrix();
  translate(3*width/4 , 3*height/4);
  q = cos(a*200)*100;
  r = cos(a*1)*100;
  fill(209, 98, 43);
  ellipse(q, r, 5, 5);
  popMatrix();
  
  println(millis());
}
