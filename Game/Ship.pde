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
    rect(x, y, 20, 7);
    rect(x, y - 3, 15, 7);
    rect(x, y - 5, 4, 4);
    fill(c);
  }
}
