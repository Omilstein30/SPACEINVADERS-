class Barrier{
  boolean canDisplay = true;
  int x, y;
  float  bWidth, bHeight;
  color c;
  public Barrier(int x_, int y_){
    x = x_;
    y = y_;
    bWidth = 100;
    bHeight = 70;
    c =  color(59, 48, 112);
  }
  void display(){
    if(canDisplay){
    fill(c);
    rect(x, y, bWidth, bHeight);    
    }
  }
  void destroy(){
    for(int i = 0; i < currentBullets.size(); i++){
      if(currentBullets.get(i).x >= x - 50 && currentBullets.get(i).x <= x + 50 && currentBullets.get(i).y >= y - 35 && currentBullets.get(i).y <= y + 35){ 
        if(bHeight > 0){
        bHeight -= .3;
        currentBullets.remove(i);
        }
        else{
          canDisplay = false;
        }
      }
    }
  }
}
