class Voice {
  int lifespan, age;
  int pitch;
  float beat = 1;

  Wave wave; 

  Voice(int index) {
    pitch = pitches[index];

    //Which Curve?
    int w = wb.fire();

    switch(w) {
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
    case 5:
      wave = new Sine(); 
      break;
    case 6:
      wave = new Cosine(); 
      break;
    case 7:
      wave = new Tan(); 
      break;
    case 8:
      wave = new Square(); 
      break;
    case 9:
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

    println("INIT VOICE " + index + "\tLIFESPAN: " + lifespan + "\tWAVE TYPE: " + wave.getType() + "\tFREQ: " + freq + "\tAMP: " + amp);
  }

  boolean run() {
    age++;   // Keep track of how long the voice has been going for
    // Play the beat
    if ( age%beat < 1) {
      beat = constrain(wave.run(), 10, wave.run());
      midi.playNote(pitch, 100, .25); 
      return true;
    }
    return false;
  }
  
  // Check for dead
  boolean isDead() {
    return age > lifespan;
  }
}

