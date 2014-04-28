class Voice {
  int lifespan, age;
  int pitch;
  float beat = 1;

  Wave wave; 

  Voice() {
    pitch = 50;

    //Which Curve?

    switch(floor(random(0, 4))) {
    case 0:
      wave = new Sine(); 
      break;
    case 1:
      wave = new Cosine(); 
      break;
    case 2:
      wave = new Tan(); 
      break;
    case 3:
      wave = new Square(); 
      break;
    case 4:
      wave = new Sawtooth();
      break;
    }
    

    //////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////
    //////////////////////PLAY WITH THESE NUMBERS/////////////////////
    //////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////
    
    // Assign random frequencies and amplitudes
    float freq = random(0.01, 0.1);
    float amp = random(100, 1000);
    wave.init(0, freq, amp, amp);

    //Set lifespan of voice
    lifespan = int(random(600, 6000));

  }

  boolean run() {
    age++;   // Keep track of how long the voice has been going for
    // Play the beat
    if ( age%beat < 1) {
      beat = constrain(wave.run(), 10, wave.run());
      float[] pitches = {60, 64, 66, 67, 62, 71, 69, 61, 65, 63, 68, 70};
      for (int i = 0; i < 12; i++) {
      midi.playNote(pitches[i], 100, 1.25); 
      }
      return true;
    }
    return false;
  }
  
  // Check for dead
  boolean isDead() {
    return age > lifespan;
  }
}

