float x, y, x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6, x7, y7,
x8, y8, x9, y9, x10, y10, m, n, m1, n1, m2, n2, m3, n3, m4, n4, m5,
n5, m6, n6, m7, n7, c, d, c1, d1, c2, d2, c3, d3, c4, d4, c5, d5, 
q, r;
float a;

void setup() {
  size(430, 430);
  background(50);
}

void draw() {
  
  
  if (millis() < 30000) {
    a+=.002;
    pushMatrix();
    translate(width/2, height/2);
    c = cos(a*100)*200;
    d = sin(a*1)*200;
    c1 = cos((a+20)*100)*200;
    d1 = sin((a+20)*1)*200;
    c2 = cos((a+40)*100)*200;
    d2 = sin((a+40)*1)*200;
    c3 = cos((a+60)*100)*200;
    d3 = sin((a+60)*1)*200;
    c4 = cos((a+90)*100)*200;
    d4 = sin((a+90)*1)*200;
    c5 = cos((a+120)*100)*200;
    d5 = sin((a+120)*1)*200;
    
    noStroke();
    //fill(223, 190, 180, 100);
    fill(204, 198, 187, 100);
    ellipse(c, d, 7, 7);
    ellipse(c1, d1, 7, 7);
    ellipse(c2, d2, 7, 7);
    ellipse(c3, d3, 7, 7);
    ellipse(c4, d4, 7, 7);
    ellipse(c5, d5, 7, 7);
    popMatrix();
  }
    
    else if (millis() >= 30000 && millis() <= 30300) {
      background(50, 50, 50, 1);
    }
    
    else if (millis() > 30300 && millis() < 41000) {
      a+=.02;
      pushMatrix();
      translate(width/2, height/2);
      x = sin(a*100)*200;
      y = sin(a*1)*200;
      x1 = sin((a+5)*100)*200;
      y1 = sin((a+5)*1)*200;
      x2 = sin((a+10)*100)*200;
      y2 = sin((a+10)*1)*200;
      x3 = sin((a+15)*100)*200;
      y3 = sin((a+15)*1)*200;
      x4 = sin((a+20)*100)*200;
      y4 = sin((a+20)*1)*200;
      x5 = sin((a+25)*100)*200;
      y5 = sin((a+25)*1)*200;
      x6 = sin((a+30)*100)*200;
      y6 = sin((a+30)*1)*200;
      x7 = sin((a+35)*100)*200;
      y7 = sin((a+35)*1)*200;
      x8 = sin((a+40)*100)*200;
      y8 = sin((a+40)*1)*200;
      x9 = sin((a+45)*100)*200;
      y9 = sin((a+45)*1)*200;
      x10 = sin((a+50)*100)*200;
      y10 = sin((a+50)*1)*200;
      
      noStroke();
      fill(223, 190, 180, 100);
      //fill(196, 205, 202, 100);
      ellipse(x, y, 7, 7);
      ellipse(x1, y1, 7, 7);
      ellipse(x2, y2, 7, 7);
      ellipse(x3, y3, 7, 7);
      ellipse(x4, y4, 7, 7);
      ellipse(x5, y5, 7, 7);
      ellipse(x6, y6, 7, 7);
      ellipse(x7, y7, 7, 7);
      ellipse(x8, y8, 7, 7);
      ellipse(x9, y9, 7, 7);
      ellipse(x10, y10, 7, 7);
      popMatrix();
    }
    
    else if (millis() >= 41000 && millis() <= 41300) {
      background(50, 50, 50, 0.01);
    }
    
    else if (millis() > 41300 && millis() < 75000) {
      a+=.005;
      pushMatrix();
      translate(width/2, height/2);
      m = sin(a*200)*200;
      n = cos(a*1)*200;
      m1 = sin((a+5)*200)*200;
      n1 = cos((a+5)*1)*200;
      m2 = sin((a+10)*200)*200;
      n2 = cos((a+10)*1)*200;
      m3 = sin((a+15)*200)*200;
      n3 = cos((a+15)*1)*200;
      m4 = sin((a+20)*200)*200;
      n4 = cos((a+20)*1)*200;
      m5 = sin((a+25)*200)*200;
      n5 = cos((a+25)*1)*200;
      m6 = sin((a+30)*200)*200;
      n6 = cos((a+30)*1)*200;
      m7 = sin((a+35)*200)*200;
      n7 = cos((a+35)*1)*200;
      noStroke();
      fill(196, 205, 202, 100);
      //fill(204, 198, 187, 100);
      ellipse(m, n, 7, 7);
      ellipse(m1, n1, 7, 7);
      ellipse(m2, n2, 7, 7);
      ellipse(m3, n3, 7, 7);
      ellipse(m4, n4, 7, 7);
      ellipse(m5, n5, 7, 7);
      ellipse(m6, n6, 7, 7);
      ellipse(m7, n7, 7, 7);
      popMatrix();
    }
    
  /*
  
  
  pushMatrix();
  translate(3*width/4 , 3*height/4);
  q = cos(a*200)*200;
  r = cos(a*1)*200;
  fill(204, 183, 202, 100);
  ellipse(q, r, 7, 7);
  popMatrix();
  */
  
  println(millis());
  println(a);
}
