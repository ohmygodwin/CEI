import arb.soundcipher.*;
 
SoundCipher midi = new SoundCipher(this);
int beat;
int x = 10;

//float[] pitches = {60, 64, 66, 67, 62, 71, 69, 61, 65, 63, 68, 70};

float[] tone = new float[12];

float[][] pitches = {
  {60, 64, 66, 67, 62, 71, 69, 61, 65, 63, 68, 70},
  {68, 60, 62, 63, 70, 67, 65, 69, 61, 71, 64, 66},
  {66, 70, 60, 61, 68, 65, 63, 67, 71, 69, 62, 64},
  {65, 69, 71, 60, 67, 64, 62, 66, 70, 68, 61, 63},
  {70, 62, 64, 65, 60, 69, 67, 71, 63, 61, 66, 68},
  {61, 65, 67, 68, 63, 60, 70, 62, 66, 64, 69, 71},
  {63, 67, 69, 70, 65, 62, 60, 64, 68, 66, 71, 61},
  {71, 63, 65, 66, 61, 70, 68, 60, 64, 62, 67, 69},
  {67, 71, 61, 62, 69, 66, 64, 68, 60, 70, 63, 65},
  {69, 61, 63, 64, 71, 68, 66, 70, 62, 60, 65, 67},
  {64, 68, 70, 71, 66, 63, 61, 65, 69, 67, 60, 62},
  {62, 66, 68, 69, 64, 61, 71, 68, 67, 65, 70, 67}
};

int set;

void setup() {
      //frameRate(2);
      size(800, 200);
      background(50);
      beat = 0;
      
      println(tone);
      fishy();
      println(tone);
}
 
void draw() {
      float slow = map(mouseX, 0, width, 5, 50);
      frameRate(random(.25, slow));
      
      if (beat == 0) {
        set = (int)random(0, 12);
      }
      
      float dynamics = random(30, 100);
      float tempo = random(.25, 4);
      
      //midi.playNote(pitches[set][beat], dynamics, tempo); 
      
      noStroke();
      fill(255, 150);
      ellipse(x, map(pitches[set][beat], 59, 72, 0, height), tempo*10, tempo*10);
      x+=(50-frameRate)/10;
      if (x > width-10) {
        background(50);
        x = 5;
      }
      
      //println(pitches[set][beat], set, beat);
      
      beat = (beat + 1) % pitches.length; // mod so it goes back to 0 after passing 11
      //println(beat);
}


void fishy() {
  boolean start_over;
  
  tone[0] = 0;
  for (int i = 1; i < 12; i++) {
    start_over = true;
    
    while (start_over) {
      start_over = false;
      int temp = (int)random(1, 12);
      println(temp);
      
      for (int j = 1; j < i; j++) {
        
        if (tone[j] == temp) {
          println(i, j);
          start_over = true;
          break;
          
        }
       
      }
      tone[i] = temp;
    }
    println(tone);
  }
}
