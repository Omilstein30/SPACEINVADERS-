 Ship commandShip = new Ship(500, 750, 0, 0);
AlienWave waveOne = new AlienWave(5, 5);
ArrayList<Bullet> currentBullets = new ArrayList<Bullet>();
int RIGHT_ = 0;
int LEFT_ = 2;
int AlienDirection = RIGHT_; 
int countdown;
boolean canTurn = true;
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
    if(key == ' '){
      commandShip.shoot();
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
      if(waveOne.get(0).x < 15){
      for(int i = 0; i < waveOne.aliensPerRow * waveOne.aliensPerCol; i++){
          waveOne.get(i).y += 40;
          AlienDirection = RIGHT_;
        }
      }
      if(waveOne.get(waveOne.aliensPerRow * waveOne.aliensPerCol - 1 ).x > 980){
      for(int i = 0; i < waveOne.aliensPerRow * waveOne.aliensPerCol; i++){
          waveOne.get(i).y += 40;
          AlienDirection = LEFT_;
        }
      }
      for(int i = 0; i < waveOne.aliensPerRow * waveOne.aliensPerCol; i++){
        int randomNum = (int)(random(150));
        if(randomNum == 7){
          waveOne.get(i).shoot();
        }
      }
    
    countdown = 60;
  }
