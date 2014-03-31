float x1 = 0;
float y1 = 700;
Curve angle;
int count;
float duration;
float a;
float a1 = 0;
float a2;
float t = .97;
float x, y;

void setup() {
  size(700,700);
  
}

void draw() {
  background(251, 249, 244);
  fill(28, 117, 188);
  noStroke();
  ellipse(x1, y1, 30, 30);
  
  if (millis() < 3800) {
    t += .0002;
    a2 = pow(t, 200);
    //x1 = sin(a1)*700;
    x = 400-sin(pow(t, 200));
    y = 400-cos(pow(t, 200));
    x1 = map(x, 399, 400.5, 300, 400);
    y1 = map(y, 399, 400.5, 300, 400);
    //y1 = cos(a2)*700;
    a1+=.002;
  }
  /*
  else if (millis() < 5000) {
    t += .002;
    a2 = pow(t, 200);
    //x1 = sin(a1)*700;
    x = 400-sin(pow(t, 200));
    y = 400-cos(pow(t, 200));
    x1 = map(x, 399, 400.5, 300, 400);
    y1 = map(y, 399, 400.5, 300, 400);
    //y1 = cos(a2)*700;
    a1+=.002;
  }
  */
  
    println(millis(), t, x1, y1);
}
/*
float calc() {
  angle = new Exponential(0, .002, 200);
  return a = map(angle.run(), 0, height, 0, 360);
}
*/

