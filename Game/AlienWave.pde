class AlienWave{
int aliensPerCol;
int aliensPerRow;

  public AlienWave(int aliensPerRow_ , int aliensPerCol_){
    aliensPerRow = aliensPerRow_;
    aliensPerCol = aliensPerCol_;
    for(int i = 0; i < aliensPerRow; i++){
      for(int j = 0; j < aliensPerCol; j++){
        currentAliens.add(new Alien((500/aliensPerRow * i) + aliensPerRow * 10,(800/2)/aliensPerCol * j + aliensPerRow * 10, -.01, 0));
      }
    }
    
  }
  int size(){
    return currentAliens.size();
  }
  void display(){  
    
    for(int i = 0; i < currentAliens.size(); i++){
      currentAliens.get(i).display();
    }
  }
  void move(){
    for(int i = 0; i < currentAliens.size(); i++){
          currentAliens.get(i).move();
    }    
  }
  Alien get(int index){
    
    return(currentAliens.get(index));
  
  }
  int getPerRow(){
    return aliensPerRow;
  }
  int getPerCol(){
    return aliensPerCol;
  }
  void removeAliens(){
    boolean bulletStillAlive = true;
    for(int j = currentAliens.size()-1; j >= 0 && bulletStillAlive; j--){
      for(int i = currentBullets.size()-1; i >= 0 && bulletStillAlive; i--){
       
        if(currentAliens.get(j).isColliding(currentBullets.get(i))){
        currentAliens.remove(j);
        currentBullets.remove(i);
        bulletStillAlive = false;
        }
      }
    }
    
  }
}
