
import ddf.minim.*;        
AudioSample sound;

PImage catPic;
int xPos = 590, yPos = 253, speed = 1;

void setup() {
  size(1024, 768);
  
  catPic = loadImage("tabby.jpeg");
  catPic.resize(1024, 768);  // to match your size
  background(catPic);
  
  Minim minim = new Minim(this);        
  sound = minim.loadSample("cat-lazer.wav");
  
  
}

void draw() {
  
  noStroke();
  fill(200, 20, 20);
  ellipse(xPos, yPos, 20, 20); 
  ellipse(xPos + 85, yPos, 20, 20); 

  if (yPos > 768) {
    background(catPic); 
    xPos = 590; 
    yPos = 253;
    speed = 1; 
    
  }
  
}

void keyPressed() {
  xPos -= speed;
  yPos += speed;
  
  if (speed == 1) {
    sound.trigger();
  }
  
  speed++;
}