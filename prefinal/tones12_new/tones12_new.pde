import arb.soundcipher.*;
 
SoundCipher midi = new SoundCipher(this);
int beat;

//float[] pitches = {60, 64, 66, 67, 62, 71, 69, 61, 65, 63, 68, 70};
float[][] pitches = {
  {60, 64, 66, 67, 62, 71, 69, 61, 65, 63, 68, 70},
  {68, 60, 62, 63, 70, 67, 65, 69, 61, 71, 64, 66},
  {66, 70, 60, 61, 68, 65, 63, 67, 71, 69, 62, 64},
  {65, 69, 71, 60, 67, 64, 62, 66, 70, 68, 61, 63},
  {70, 62, 64, 65, 60, 69, 67, 71, 63, 61, 66, 68}
};
int set;

void setup() {
      //frameRate(2);
      beat = 0;
}
 
void draw() {
      frameRate(random(.5, 10));
      
      if (beat == 0) {
        set = floor(random(0, 4.9));
      }
      
      midi.playNote(pitches[set][beat], random(50, 100), random(.25, 2)); 
      println(pitches[set][beat]);
      
      beat = (beat + 1) % pitches.length; // mod so it goes back to 0 after passing 11
      
}

//float[] newPitches() {
//
//  
//  switch(floor(random(0, 4))) {
//    case 0:
//      pitches = {60, 64, 66, 67, 62, 71, 69, 61, 65, 63, 68, 70}; 
//      break;
//    case 1:
//      pitches = {68, 60, 62, 63, 70, 67, 65, 69, 61, 71, 64, 66}; 
//      break;
//    case 2:
//      pitches = {66, 70, 60, 61, 68, 65, 63, 67, 71, 69, 62, 64}; 
//      break;
//    case 3:
//      pitches = {65, 69, 71, 60, 67, 64, 62, 66, 70, 68, 61, 63};
//      break;
//    case 4:
//      pitches = {70, 62, 64, 65, 60, 69, 67, 71, 63, 61, 66, 68};
//      break;
//    }
//  return pitches;
//}
