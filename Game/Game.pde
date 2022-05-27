Ship commandShip = new Ship(500, 750, 0, 0);
AlienWave waveOne = new AlienWave(20, 20);
int RIGHT_ = 0;
int DOWN_ = 1;
int LEFT_ = 2;
int AlienDirection = LEFT_; 
int countdown;
void setup(){
  size(1000, 800);
  background(0, 0, 0); 
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
    if(countdown > 0){
      countdown --;
    } 
    background(0);
    commandShip.move();
    commandShip.display();
    waveOne.display();
    if(countdown == 0){
      waveOne.move();
      countdown = 60;
      println(waveOne.get(0));
      if(AlienDirection == DOWN_ &&  waveOne.get(0).x == 15){
        AlienDirection = RIGHT_;
      }
      if(AlienDirection == DOWN_ && waveOne.get(waveOne.getPerRow()).x == 985){
        AlienDirection = LEFT_;
      }
    }
  }
