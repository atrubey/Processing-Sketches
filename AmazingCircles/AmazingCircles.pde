  int speed = 5;
  int x1 = 200, x2 = 800;

void setup() {
  
  size(1000, 1000);
  background(200, 200, 200);

  
}

void draw() {
  background(200, 200, 200);
  
  bullseye(x1); 
  bullseye(x2);
  
  x1 -= speed;
  x2 += speed;
  
  if (x1 > 800) {
    do {
      x1 -= speed;
      x2 += speed;
    } while (x1 > 200);
  } else if (x1 < 200) {
    do {
      x1 += speed;
      x2 -= speed;
    } while (x1 < 800);
  }

  
}

void bullseye(int xPos) {
  noFill();
  stroke(0, 0, 0); 
  
  for (int i = 10; i < 400; i += 10) {
    ellipse(xPos, 500, i, i);
  }
  
}