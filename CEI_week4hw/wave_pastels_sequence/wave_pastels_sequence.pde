float x, y, m, n, c, d, c1, d1, c2, d2, c3, d3, q, r;
float a;

void setup() {
  size(430, 430);
  background(50);
}

void draw() {
  a+=.02;
  
  if (millis() < 20000) {
    pushMatrix();
    translate(width/2, height/2);
    c = cos(a*100)*200;
    d = sin(a*1)*200;
    c1 = cos((a+.02)*100)*200;
    d1 = sin((a+.02)*1)*200;
    c2 = cos((a+.04)*100)*200;
    d2 = sin((a+.04)*1)*200;
    c3 = cos((a+.06)*100)*200;
    d3 = sin((a+.06)*1)*200;
    noStroke();
    fill(223, 190, 180, 100);
    ellipse(c, d, 7, 7);
    popMatrix();
  }
  
  
  /*
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
  */
  
  println(millis());
}
