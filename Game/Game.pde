Ship commandShip = new Ship(500, 750, 0, 0);
AlienWave waveOne = new AlienWave(5, 5);
int RIGHT_ = 0;
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
      waveOne.move();
      if(waveOne.get(0).x < 15 || waveOne.get(waveOne.aliensPerRow * waveOne.aliensPerCol - 1).x > 980){
      for(int i = 0; i < waveOne.aliensPerRow * waveOne.aliensPerCol; i++){
        if(countdown == 0){
          waveOne.get(i).y += 40;
        }
          waveOne.get(i).xSpeed = - waveOne.get(i).xSpeed;
        }
      }
    
    countdown = 60;
  }
