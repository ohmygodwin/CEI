float x1 = 0;
float y1 = 700;
float angle = 0;

void setup() {
  size(700,700);
  
}

void draw() {
  background(251, 249, 244);
  fill(28, 117, 188);
  noStroke();
  ellipse(x1, y1, 30, 30);
  if (millis() < 3000) {
    x1 = sin(angle)*700;
    y1 = cos(angle)*700;
    angle+=.01;
  }
  println(millis());
}
