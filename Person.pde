class Person {
  PImage[] frames;
  int numOfFrames;
  String spriteName;
  int currentFrame;
  int slowness;
  boolean walking;
  boolean walkingRight;
  float x,y,speed;

  Person(String spriteName_, int numOfFrames_) {
    numOfFrames = numOfFrames_;
    spriteName = spriteName_;
    currentFrame = 0;
    slowness = 4;
    walking = false;
    walkingRight = true;
    x = width/2;
    y = height/2;
    speed = 2.5;
    frames = new PImage[numOfFrames];
    for (int i = 0; i < frames.length; i++) {
      frames[i] = loadImage(spriteName + nf(i+1, 2) + ".png");
    }
  }

  void display() {
    keyDetect();
    if (walking) {
      if (frameCount % slowness == 0) {
        currentFrame = (currentFrame + 1) % numOfFrames;
      }
    }
    pushMatrix();
    translate(x,y);
    if(!walkingRight) {
      rotateY(PI);
    }
    image(frames[currentFrame], 0, 0);
    popMatrix();
  }

  void keyDetect() {
    if(keyPressed && (keyCode == RIGHT || keyCode == LEFT)) {
      walking = true;
      if (keyCode == RIGHT) {
        walkingRight = true;
        x += speed;
      } else {
        walkingRight = false;
        x -= speed;
      }
    } else {
      walking = false;
    }
  }
}

