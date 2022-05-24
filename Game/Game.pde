ArrayList<Alien> currentAliens;
Ship commandShip;
void setup(){
  size(1000, 800);
  background(0, 0, 0);
  Ship commandShip = new Ship(500, 750, 0, 0);
  ArrayList<Alien> currentAliens = new ArrayList<Alien>();
  }
  void keyPressed(){
    if(key == 'a'){
      commandShip.moveRight();
    }
    if(key == 'd'){
      commandShip.moveLeft();
    }
  }
  void draw(){
    background(0);
    commandShip.move();
    commandShip.display();
    for(int i = 0; i < currentAliens.size(); i++){
      currentAliens.get(i).move();
      currentAliens.get(i).display();
    }
  }
