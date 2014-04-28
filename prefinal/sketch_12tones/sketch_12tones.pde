import arb.soundcipher.*;

SoundCipher midi;
Voice[] voices = new Voice[2];
Wave wave;
  float beat = 1;


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
  
  
  float[] pitches = {60, 64, 66};
  float[] pitches2 = {67, 62, 71};
  float[] pitches3 = {69, 61, 65};
  float[] pitches4 = {63, 68, 70};

//cos(t)*a + o
//abs(tan(t)*a)

//beat = constrain(wave.run(), 10, wave.run());  
//midi.playChord(1, 0, 64, pitches, 80, 4, .8, 64);
//midi.playChord(5, 0, 64, pitches2, 80, 4, .8, 64);
//midi.playChord(9, 0, 64, pitches3, 80, 4, .8, 64);
//midi.playChord(13, 0, 64, pitches4, 80, 4, .8, 64);

//midi.playChord(pitches, 80, 1);
//frameRate(.5);
//go();

}

void draw() {
  
  go();
  
  //midi.playNote(midi.pcRandom(60, 72, midi.CHROMATIC), 100, 1);

}

Voice[] go() {
  voices[0] = new Voice();
  voices[0].run();
  
  return voices;

}


