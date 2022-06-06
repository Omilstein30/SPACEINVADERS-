class Barrier{
  int x, y, bWidth, bHeight;
  color c;
  public Barrier(int x_, int y_){
    x = x_;
    y = y_;
    bWidth = 100;
    bHeight = 70;
    c =  color(59, 48, 112);
  }
  void display(){
    
    rect(x, y, bWidth, bHeight);
    fill(c);
  }
}
