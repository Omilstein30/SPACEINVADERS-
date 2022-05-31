Ship commandShip = new Ship(500, 750, 0, 0);
AlienWave waveOne = new AlienWave(7, 7);
int RIGHT_ = 0;
int DOWN_ = 1;
int LEFT_ = 2;
int AlienDirection = RIGHT_; 
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
      if(AlienDirection == DOWN_ &&  waveOne.get(0).x <= 40){
        AlienDirection = RIGHT_;
      }
      if(AlienDirection == DOWN_ && waveOne.get(waveOne.getPerRow()).x >= 960){
        AlienDirection = LEFT_;
      }
    }
  }
