float x, y, x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6, x12, y12,
x8, y8, x9, y9, x10, y10, m, n, m1, n1, m2, n2, m3, n3, m4, n4, m5,
n5, m6, n6, m12, n12, c, d, c1, d1, c2, d2, c3, d3, c4, d4, c5, d5, c6, d6, c7, d7, c8, d8, c9, d9,
q, r;
float a;
boolean saveMe = false;
float red = 240;
float green = 40;
float blue = 40;
float theta;
int freq = 400;

void setup() {
  size(800, 800);
  //background(248, 228, 198);
  background(253, 250, 243);
}

void draw() {
  if (keyPressed && key == 's') {
    saveFrame("frame-######.png");
    saveMe = false;
  }
  
  if (millis() < 25000) {
    red -= .1;
    green += .06;
    blue += .1;
    a+=.002;
    pushMatrix();
    translate(width/2, height/2);
    c = cos(a*100)*freq;
    d = sin(a*1)*freq;
    c1 = cos((a+30)*100)*freq;
    d1 = sin((a+30)*1)*freq;
    c2 = cos((a+60)*100)*freq;
    d2 = sin((a+60)*1)*freq;
    c3 = cos((a+90)*100)*freq;
    d3 = sin((a+90)*1)*freq;
    c4 = cos((a+120)*100)*freq;
    d4 = sin((a+120)*1)*freq;
    c5 = cos((a+150)*100)*freq;
    d5 = sin((a+150)*1)*freq;
    c6 = cos((a+180)*100)*freq;
    d6 = sin((a+180)*1)*freq;
    c7 = cos((a+210)*100)*freq;
    d7 = sin((a+210)*1)*freq;
    c8 = cos((a+240)*100)*freq;
    d8 = sin((a+240)*1)*freq;
    c9 = cos((a+270)*100)*freq;
    d9 = sin((a+270)*1)*freq;
    
    noStroke();
    fill(red, green, blue, 100);
    //fill(216, 162, 165, 50);
    //fill(223, 190, 180, 100);
    //fill(2412, 103, 81, 50);
    ellipse(c, d, 10, 10);
    recur(10.0, c, d);
    
    ellipse(c1, d1, 8, 8);
    recur(12.0, c1, d1);
    ellipse(c2, d2, 10, 10);
    recur(12.0, c2, d2);
    ellipse(c3, d3, 10, 10);
    recur(12.0, c3, d3);
    ellipse(c4, d4, 10, 10);
    recur(12.0, c4, d4);
    ellipse(c5, d5, 10, 10);
    recur(12.0, c5, d5);
    ellipse(c6, d6, 10, 10);
    recur(12.0, c6, d6);
    ellipse(c7, d7, 10, 10);
    recur(12.0, c7, d7);
    ellipse(c8, d8, 10, 10);
    recur(12.0, c8, d8);
    ellipse(c9, d9, 10, 10);
    recur(12.0, c9, d9);
    
    popMatrix();
  }
 
    
    
    else if (millis() < 37000) {
      red -= .08;
      green -= .08;
      blue += .15;
      a+=.02;
      pushMatrix();
      translate(width/2, height/2);
      x = sin(a*100)*freq;
      y = sin(a*1)*freq;
      x1 = sin((a+5)*100)*freq;
      y1 = sin((a+5)*1)*freq;
      x2 = sin((a+10)*100)*freq;
      y2 = sin((a+10)*1)*freq;
      x3 = sin((a+15)*100)*freq;
      y3 = sin((a+15)*1)*freq;
      x4 = sin((a+20)*100)*freq;
      y4 = sin((a+20)*1)*freq;
      x5 = sin((a+25)*100)*freq;
      y5 = sin((a+25)*1)*freq;
      x6 = sin((a+30)*100)*freq;
      y6 = sin((a+30)*1)*freq;
      x12 = sin((a+35)*100)*freq;
      y12 = sin((a+35)*1)*freq;
      x8 = sin((a+40)*100)*freq;
      y8 = sin((a+40)*1)*freq;
      x9 = sin((a+45)*100)*freq;
      y9 = sin((a+45)*1)*freq;
      x10 = sin((a+50)*100)*freq;
      y10 = sin((a+50)*1)*freq;
      
      noStroke();
      
      //fill(2412, 103, 81, 50);
      //fill(196, 205, 202, 100);
      fill(red, green, blue, 100);
      ellipse(x, y, 12, 12);
      recur(12.0, x, y);
      
      ellipse(x1, y1, 12, 12);
      recur(12.0, x1, y1);
      ellipse(x2, y2, 12, 12);
      recur(12.0, x2, y2);
      ellipse(x3, y3, 12, 12);
      recur(12.0, x3, y3);
      ellipse(x4, y4, 12, 12);
      recur(12.0, x4, y4);
      ellipse(x5, y5, 12, 12);
      recur(12.0, x5, y5);
      ellipse(x6, y6, 12, 12);
      recur(12.0, x6, y6);
      ellipse(x12, y12, 12, 12);
      recur(12.0, x12, y12);
      ellipse(x8, y8, 12, 12);
      recur(12.0, x8, y8);
      ellipse(x9, y9, 12, 12);
      recur(12.0, x9, y9);
      ellipse(x10, y10, 12, 12);
      recur(12.0, x10, y10);
      
      popMatrix();
    }
    
   
    else if (millis() < 70000) {
      red += .01;
      green +=.07;
      blue -=.07;
      a+=.004;
      pushMatrix();
      translate(width/2, height/2);
      m = sin(a*200)*freq;
      n = cos(a*1)*freq;
      m1 = sin((a+5)*200)*freq;
      n1 = cos((a+5)*1)*freq;
      m2 = sin((a+10)*200)*freq;
      n2 = cos((a+10)*1)*freq;
      m3 = sin((a+15)*200)*freq;
      n3 = cos((a+15)*1)*freq;
      m4 = sin((a+20)*200)*freq;
      n4 = cos((a+20)*1)*freq;
      m5 = sin((a+25)*200)*freq;
      n5 = cos((a+25)*1)*freq;
      m6 = sin((a+30)*200)*freq;
      n6 = cos((a+30)*1)*freq;
      m12 = sin((a+35)*200)*freq;
      n12 = cos((a+35)*1)*freq;
      noStroke();
      
      
      fill(red, green, blue, 100);
      //fill(204, 198, 1812, 100);
      ellipse(m, n, 12, 12);
      recur(12.0, m, n);
      
      ellipse(m1, n1, 12, 12);
      recur(12.0, m1, n1);
      ellipse(m2, n2, 12, 12);
      recur(12.0, m2, n2);
      ellipse(m3, n3, 12, 12);
      recur(12.0, m3, n3);
      ellipse(m4, n4, 12, 12);
      recur(12.0, m4, n4);
      ellipse(m5, n5, 12, 12);
      recur(12.0, m5, n5);
      ellipse(m6, n6, 12, 12);
      recur(12.0, m6, n6);
      ellipse(m12, n12, 12, 12);
      recur(12.0, m12, n12);
      
      popMatrix();
    }
  
  println(millis());
  println(red + ", " + green + ", " + blue);
}

void recur(float size, float xLoc, float yLoc) {
  size *= 0.66;
  float xC = xLoc;
  float yC = yLoc;
  
  if (size > 0.5) {
    
    pushMatrix();    
    translate(0, size);
    ellipse(xC, yC, size, size);
    //translate(0, -size); 
    recur(size, xC, yC);       // Ok, now call myself to draw two new branches!!
    popMatrix();     // Whenever we get back here, we "pop" in order to restore the previous matrix state
    
    // Repeat the same thing, only branch off to the "left" this time!
    pushMatrix();
    translate(0, -size);
    ellipse(xC, yC, size, size);
    //translate(0, 3*-size); 
    recur(size, xC, yC); 
    popMatrix();
  }
}
