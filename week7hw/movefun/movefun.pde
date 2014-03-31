float x1 = 0;
float y1 = 700;
Curve angle;
int count;
float duration;
float a;
float a1 = 0;
float a2;

void setup() {
  size(700,700);
  
}

void draw() {
  background(251, 249, 244);
  fill(28, 117, 188);
  noStroke();
  ellipse(x1, y1, 30, 30);
  
  if (millis() < 13500) {
    float t += .002;
    a2 = pow(t, 200);
    x1 = sin(a1)*700;
    y1 = cos(a2)*700;
    a1+=.001;
  }
  /*
  else if (millis() < 2500) {
    x1 = sin(angle)*700;
    y1 = cos(angle)*700;
    angle+=.001;
  }
  */
  
  count++;
  println(millis(), a, x1, y1);
}
/*
float calc() {
  angle = new Exponential(0, .002, 200);
  return a = map(angle.run(), 0, height, 0, 360);
}
*/

