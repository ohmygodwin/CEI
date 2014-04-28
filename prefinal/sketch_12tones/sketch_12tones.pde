import arb.soundcipher.*;

SoundCipher midi;

//float[] pitches = {60, 64, 66, 67, 62, 71, 69, 61, 65, 63, 68, 70};
//float [] dynamics = {80, 100, 80, 80, 80, 100, 80, 80, 100, 80, 80, 100};
//float[] durations = {random(.15, 1.5), random(.15, 1.5), random(.15, 1.5),random(.15, 1.5), 
//random(.15, 1.5), random(.15, 1.5), random(.15, 1.5), random(.15, 1.5), random(.15, 1.5),
//random(.15, 1.5), random(.15, 1.5), random(.15, 1.5)};
//  
//sc.playPhrase(pitches, dynamics, durations);


void setup() {
  midi = new SoundCipher(this);
  midi.instrument = midi.OCARINA;
}

void draw() {
  wave = new Sine(); 

  
  float freq = random(0.01, 0.1);
    float amp = random(100, 1000);
    wave.init(0, freq, amp, amp);

float[] pitches = {60, 64, 66};
float[] pitches2 = {67, 62, 71};
float[] pitches3 = {69, 61, 65};
float[] pitches4 = {63, 68, 70};
  
score.addChord(1, pitches, 80, 4);
score.addChord(5, pitches2, 80, 4);
score.addChord(9, pitches3, 80, 4);
score.addChord(13, pitches4, 80, 4);
//
//sc.CHROMATIC

score.addNote(0, 9, 0, 36, 100, 0.5, 0.8, 64);

score.play(3);
}


