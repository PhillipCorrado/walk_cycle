Person dude;

void setup() {
  size(500, 500, OPENGL);
  imageMode(CENTER);
  dude = new Person("sprite",16);
  
}

void draw() {
  background(50);
  dude.display();
}

