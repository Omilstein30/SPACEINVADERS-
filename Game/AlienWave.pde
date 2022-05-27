int aliensPerRow;
int aliensPerCol;
ArrayList<Alien> currentAliens = new ArrayList<Alien>();
class AlienWave{
  public AlienWave(int aliensPerRow_ , int aliensPerCol_){
    aliensPerRow = aliensPerRow_;
    aliensPerCol = aliensPerCol_;
  }
  void display(){
    for(int i = 0; i < aliensPerRow; i++){
      for(int j = 0; j < aliensPerCol; j++){
        currentAliens.add(new Alien(width/aliensPerRow * i + aliensPerRow * 10,(height/2)/aliensPerCol * j + aliensPerRow * 10, 0, 0));
      }
    }
    for(int i = 0; i < currentAliens.size(); i++){
      currentAliens.get(i).display();
    }
  }
  void move(){
    for(int i = 0; i < currentAliens.size(); i++){
      if(currentAliens.get(i).x == 15){
        AlienDirection = DOWN_;
      }
      if(currentAliens.get(i).x == 985){
        AlienDirection = DOWN_;
      }
      currentAliens.get(i).move();
    }
  }
  void get(int index){
  return(currentAliens.get(i));
  }
}
