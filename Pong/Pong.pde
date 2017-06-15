import ddf.minim.*;       
Minim minim;      
AudioSample sound1;
AudioSample sound2; 

PImage backgroundImage; 

int xPos = 500, yPos = 100, xSpeed = 1, ySpeed = 5, score = 0; 

void setup() {
  
  size(900, 900);
  background(200, 200, 200); 
  
  minim = new Minim (this); 
  sound1 = minim.loadSample("pong.wav", 128);
  sound2 = minim.loadSample("wrong.wav", 128);

  backgroundImage = loadImage("pongBackground.jpg"); 
  backgroundImage.resize(900, 900);
  
  background(backgroundImage);
  
}

void draw() {
  background(backgroundImage);
  
  textSize(30);
  text("Score: " + score, 30, 50); 
  
    fill(153, 204, 255); 
    stroke(88, 125, 245);
    
    ellipse(xPos, yPos, 50, 50); 
    
     xPos += xSpeed;
     yPos += ySpeed;
  
  if (xPos > width || xPos < 0) {
      xSpeed = -xSpeed;
  } else if (yPos > height || yPos < 0) {
      ySpeed = -ySpeed;
  }
  
  if (yPos >= height) {
    sound2.trigger();
    score--;
  }
  
  fill(253, 169, 239);
  noStroke();
  rect(mouseX, 800, 100, 20); 
   
  if (intersects(xPos, yPos, mouseX, 800, 100)) {
    sound1.trigger();
    ySpeed = -ySpeed;
    
    score++;

  }
  
}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY+20 > paddleY && ballX > paddleX && ballX < paddleX + paddleLength) {
    return true;
  } else {
    return false;
  }
}