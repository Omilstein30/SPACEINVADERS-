class AlienWave{
int aliensPerCol;
int aliensPerRow;
ArrayList<Alien> currentAliens = new ArrayList<Alien>();
  public AlienWave(int aliensPerRow_ , int aliensPerCol_){
    aliensPerRow = aliensPerRow_;
    aliensPerCol = aliensPerCol_;
    for(int i = 0; i < aliensPerRow; i++){
      for(int j = 0; j < aliensPerCol; j++){
        currentAliens.add(new Alien((1000/aliensPerRow * i) + aliensPerRow * 10,(800/2)/aliensPerCol * j + aliensPerRow * 10, 0, 0));
      }
    }
    
  }
  void display(){  
    
    for(int i = 0; i < currentAliens.size(); i++){
      currentAliens.get(i).display();
    }
  }
  void move(){
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
}
