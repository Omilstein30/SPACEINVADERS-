Ship commandShip = new Ship(500, 750, 0, 0);
AlienWave waveOne = new AlienWave(5, 7);
void setup(){
  size(1000, 800);
  background(0, 0, 0); 
  smooth();
  }
  void keyPressed(){
    if(key == 'a'){
      commandShip.moveRight();
    }
    if(key == 'd'){
      commandShip.moveLeft();
    }
  }
  void keyReleased(){
    if(key == 'a'){
      commandShip.stopMoving();
    }
    if(key == 'd'){
      commandShip.stopMoving();
    }
  }
  void draw(){
    background(0);
    commandShip.move();
    commandShip.display();
    waveOne.display();
  }
