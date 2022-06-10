 Ship commandShip = new Ship(500, 750, 0, 0);
AlienWave waveOne = new AlienWave(5, 5);
ArrayList<Alien> currentAliens = new ArrayList<Alien>();
ArrayList<Bullet> currentBullets = new ArrayList<Bullet>();
int RIGHT_ = 0;
int LEFT_ = 2;
int AlienDirection = RIGHT_; 
int countdown;
boolean canTurn = true;
Barrier No1 = new Barrier(200, 600);
  Barrier No2 = new Barrier(500, 600);
  Barrier No3 = new Barrier(800, 600);
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
    
    background(0);
    No1.display();
    No2.display();
    No3.display();
    No1.destroy();
    No2.destroy();
    No3.destroy();
    waveOne.removeAliens();
    commandShip.move();
    commandShip.display();
    waveOne.display();
      waveOne.move();
      
      if(waveOne.get(0).x < 15){ //<>//
      for(int i = 0; i < currentAliens.size(); i++){
          waveOne.get(i).y += 40;
          AlienDirection = RIGHT_;
        }
      }
      if(waveOne.get(waveOne.size()).x > 980){
      for(int i = 0; i < currentAliens.size(); i++){
          waveOne.get(i).y += 40;
          AlienDirection = LEFT_;
        }
      }
      for(int i = 0; i < currentAliens.size(); i++){
        int randomNum = (int)(random(150));
        if(randomNum == 7){
          waveOne.get(i).shoot();
        }
      }
    
  }
