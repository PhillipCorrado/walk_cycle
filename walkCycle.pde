

void setup() {
  size(500, 500);
  imageMode(CENTER);
  numOfFrames = 16;
  spriteName = "sprite";
  currentFrame = 0;
  slowness = 4;
  frames = new PImage[numOfFrames];
  for(int i = 0; i < frames.length; i++) {
    frames[i] = loadImage(spriteName + nf(i+1,2) + ".png");
  }
  
}

void draw() {
  background(50);
  image(frames[currentFrame],width/2,height/2);
  if (frameCount % slowness == 0) {
    currentFrame = (currentFrame + 1) % numOfFrames;
  }
}

