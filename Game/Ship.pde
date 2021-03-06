 class Ship{
   float x, y;
   float xSpeed, ySpeed;
   color c;
  public Ship(float x1, float y1, float xSpeed_, float ySpeed_){
    x = x1;
    y = y1;
    xSpeed = xSpeed_;
    ySpeed = ySpeed_;
    c = color(19,157,8);
  } 
  public Ship(float x1, float y1, float xSpeed_, float ySpeed_, color c1){
    x = x1;
    y = y1;
    xSpeed = xSpeed_;
    ySpeed = ySpeed_;
    c = c1;
  } 
  void display(){
    rect(x, y, 40, 14);
    rect(x+4, y - 6, 32, 14);
    rect(x+16, y - 14, 8, 16);
    fill(c);
  }
  void moveLeft(){
    xSpeed += 30;
  }
  void moveRight(){
    xSpeed -= 30;
  }
  void move(){
    x += xSpeed;
    y += ySpeed;
  }
}
