float x1 = 0;
float y1 = 700;
Curve angle;
int count;
float duration;
float a;
float a1 = 0;
float a2;
float u = .97;
float t = .97;
float x, y;
float x2, y2;
float m, n;

boolean saveMe = false;


void setup() {
  size(700,700);
  
}

void draw() {
  if (keyPressed && key == 's') {
    saveFrame("frame-######.png");
    saveMe = false;
  }
  
  background(251, 249, 244);
  fill(28, 117, 188);
  noStroke();
  ellipse(x1, y1, 80, 80);
  fill(130, 184, 58);
  ellipse(x2, y2, 50, 50);
  
  if (millis() < 3800) {
    t += .0002;
    u += .001;
    x = 400-sin(pow(t, 200));
    y = 400-cos(pow(t, 200));
    m = 400-cos(log(u) * 100);
    n = 400-sin(log(u) * 100);
    x1 = map(x, 399, 400.5, 200, 500);
    y1 = map(y, 399, 400.5, 200, 500);
    x2 = map(m, 399, 400.5, 50, 350);
    y2 = map(n, 399, 400.5, 50, 350);
  }
  
  else if (millis() < 5000) {
    t += .0007;
    u += .000001;
    x = 400-sin(log(t) * 200);
    y = 400-cos(log(t) * 200);
    m = 400-sin(pow(u, 100));
    n = 400-cos(pow(u, 100));
    x1 = map(x, 399, 400.5, 200, 500);
    y1 = map(y, 399, 400.5, 200, 500);
    x2 = map(m, 399, 400.5, 50, 350);
    y2 = map(n, 399, 400.5, 50, 350);
  }
  
  
    println(millis(), t, x1, y1);
}
/*
float calc() {
  angle = new Exponential(0, .002, 200);
  return a = map(angle.run(), 0, height, 0, 360);
}
*/

