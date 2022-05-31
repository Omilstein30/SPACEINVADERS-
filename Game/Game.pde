Ship commandShip = new Ship(500, 750, 0, 0);
AlienWave waveOne = new AlienWave(20, 20);
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
    if(countdown == 0){n      waveOne.move();
      for(int i = 0; i < waveOne.aliensPerRow * waveOne.aliensPerCol; i++){
        if(waveOne.get(i).x < 15){
          y += 40;
          dx = -dx;
        }
        if(waveOne.get(i).x < 980){
          y += 40;
          dx = -dx;
        }
      }
     countdown = 60;
    }
  }
