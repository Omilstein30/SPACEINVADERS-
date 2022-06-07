class Bullet{
  int HEIGHT_;
  int WIDTH_;
  int SPEED_;
  color COLOR_;
  float x;
  float y;
  int type_;
  public Bullet(float x_, float y_, int type){
    if(type == 0){
    HEIGHT_ = 8;
    WIDTH_ = 2;
    SPEED_ = -4;
    COLOR_ = 255;
    x = x_;
    y = y_;
    type_ = type;
    }
    if(type == 1){
    HEIGHT_ = 4;
    WIDTH_ = 4;
    SPEED_ = 8;
    COLOR_ = 255;
    x = x_;
    y = y_;
    type_ = type;
    }
  }
  void display(){
    rect(x, y, WIDTH_, HEIGHT_);
    fill(237, 59, 74);
  }
  void move(){
    y += SPEED_;
  }
  int getType(){
    return type_;
  }
}
