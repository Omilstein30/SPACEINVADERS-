class Alien{
  float x, y;
  float xSpeed, ySpeed;
  color c;
  int TYPE = 0;
  public Alien(float x_, float y_, float xSpeed_, float ySpeed_){
    x = x_;
    y = y_;
    xSpeed = xSpeed_;
    ySpeed = ySpeed_;
    c = color(255, 255, 255);
  }
    public Alien(float x_, float y_, float xSpeed_, float ySpeed_, color c_){
    x = x_;
    y = y_;
    xSpeed = xSpeed_;
    ySpeed = ySpeed_;
    c = c_;
  }
  void display(){
    rect(x, y, 30, 30);
    fill(c);
  }
  void move(){
  }
}
