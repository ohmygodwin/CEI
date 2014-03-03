float x, y, m, n, c, d, q, r;
float a;

void setup() {
  size(430*2, 430*2);
  background(50);
}

void draw() {
  a+=.001;
  
  pushMatrix();
  translate(width/4, height/4);
  x = sin(a*100)*200;
  y = sin(a*1)*200;
  noStroke();
  //stroke(232, 205, 27);
  fill(196, 205, 202, 100);
  //line(x, y, x+5, y+5);
  ellipse(x, y, 7, 7);
  popMatrix();
  
  pushMatrix();
  translate(3*width/4, height/4);
  c = cos(a*100)*200;
  d = sin(a*1)*200;
  noStroke();
  fill(223, 190, 180, 100);
  ellipse(c, d, 7, 7);
  popMatrix();
  
  pushMatrix();
  translate(width/4, 3*height/4);
  m = sin(a*200)*200;
  n = cos(a*1)*200;
  noStroke();
  fill(204, 198, 187, 100);
  ellipse(m, n, 7, 7);
  popMatrix();
  
  pushMatrix();
  translate(3*width/4 , 3*height/4);
  q = cos(a*200)*200;
  r = cos(a*1)*200;
  fill(204, 183, 202, 100);
  ellipse(q, r, 7, 7);
  popMatrix();
  
  println(millis());
}
