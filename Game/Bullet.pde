class Bullet{
  int HEIGHT_;
  int WIDTH_;
  int SPEED_;
  color COLOR_;
  float x;
  float y;
  public Bullet(float x_, float y_, int type){
    if(type == 0){
    HEIGHT_ = 8;
    WIDTH_ = 2;
    SPEED_ = -4;
    COLOR_ = 255;
    x = x_;
    y = y_;
    }
    if(type == 1){
    HEIGHT_ = 4;
    WIDTH_ = 4;
    SPEED_ = 8;
    COLOR_ = 255;
    x = x_;
    y = y_;
    }
  }
  void display(){
    rect(x, y, WIDTH_, HEIGHT_);
  }
  void move(){
    y += SPEED_;
  }
}
