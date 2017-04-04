float x;
float y;
float xSpeed;
float ySpeed;
float boxWidth = 25;
float boxHeight = 25;

void setup() {
  size(400, 400);
  x = random(0, width - boxWidth);
  y = random(0, height - boxHeight);
  xSpeed = random(1, 10);
  ySpeed = random(1, 10);
}

void draw() {
  background(166, 128, 159);
  if (y < 0 || y > height - boxHeight) {
    ySpeed = -ySpeed;
  }
  if (x < 0 || x > width - boxWidth) {
    xSpeed = -xSpeed;
  }
  
  y += ySpeed;
  x += xSpeed;
  
  rect(x, y, boxWidth, boxHeight);
}