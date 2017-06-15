int xPos = 100, yPos = 500, pipeX = 1000;
double ySpeed = 0, gravity = 1; 

void setup() {
  size(900, 900);
  background(200, 200, 200); 
  
  
}

void draw() {
  
  background (200, 200, 200);
  
  fill(200, 150, 20); 
  ellipse(xPos, yPos, 50, 50); 
  
  yPos += gravity;
  
  int random = (int) random(100, 400); 
  
  fill(20, 200, 100); 
  rect(pipeX, 500, 100, 400); 
  
  pipeX -= 2; 
  
  if (pipeX < -100) {
    pipeX = 1000; 
    rect(pipeX, 900-random, 100, random); 
  }
}

void mousePressed() {
  for (int i = 8; i > 0; i--) { 
    ySpeed = i; 
   yPos -= ySpeed;
  }
}