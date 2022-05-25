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
        currentAliens.add(new Alien(width/aliensPerRow * i,(height/2)/aliensPerCol * j , 0, 0));
      }
    }
  }
  void move(){
  }
}
