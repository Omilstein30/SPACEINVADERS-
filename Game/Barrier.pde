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
    fill(c);
    rect(x, y, bWidth, bHeight);    
  }
  void destroy(){
    for(int i = 0; i < currentBullets.size(); i++){
      if(currentBullets.get(i).x >= x - 50 && currentBullets.get(i).x <= x + 50 && currentBullets.get(i).y >= y - 35 && currentBullets.get(i).y <= y + 35){
        bWidth -= 10;
      }
    }
  }
}
