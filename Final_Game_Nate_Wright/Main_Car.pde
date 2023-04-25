class playerCar{  
  ///////////////////////////////// initializing Vars ///////////////////////////////////////////////////////////////////
  float x;
  float y;
  int w;
  int h;
  color c;
  int W = 1;
  
  //////////////////////////Hit Box Vars//////////////////////////////////////
  float top;
  float bottom;
  float right;
  float left;
  //////////////////////////////// constructor ///////////////////////////////////////////////////////////////////////
  playerCar(float startingX, float startingY, int startingW, int startingH, color carColor){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    c = carColor;
   }
   void render(){
     fill(0);
     rect(x - 53, y + 70, w - 85, h - 165);
     rect(x + 55, y + 70, w - 85, h - 165);
     rect(x + 55, y - 60, w - 85, h - 165);
     rect(x - 53, y - 60, w - 85, h - 165);
     fill(220, 200, 0);
     rect(x + 45, y + 70, w - 80, h - 160);
     rect(x - 45, y + 70, w - 80, h - 160);
     rect(x + 45, y - 60, w - 80, h - 160);
     rect(x - 45, y - 60, w - 80, h - 160);
     rect(x, y - 50, w, h - 90);
     rect(x - 12, y - 75, w - 99, h - 170);

     fill(c);
     rect(x,y,w,h);
     rect(x - 18, y - 75, w - 99, h - 170);
     rect(x + 18, y - 75, w - 99, h - 170);
     fill(0);
     rect(x - 25, y - 60, w - 85, h - 195);
     rect(x + 25, y - 60, w - 85, h - 195);
     rect(x, y - 40, w - 10, h - 180);
     rect(x, y + 60, w - 10, h - 180);
     rect(x, y + 100, w, h - 190);

      if(y >= 1200){
        //background(0); 
 }
 }

////////////////////////////////// Movement /////////////////////////////////////////////////////////
    
void moveForward(){
  if(keyPressed == true){  
  if(key == 'w'){
    y = y - 5; 
    //println('w');
  }
 }
}
void moveBack(){
  if(keyPressed == true){  
  if(key == 's'){
    y = y + 5; 
    //println('s');
  }
 }
}
void moveLeft(){
  if(keyPressed == true){ 
  if(key == 'a'){
    x = x - 7; 
    //println('a');
  }
 }
}
void moveRight(){
  if(keyPressed == true){  
  if(key == 'd'){
    x = x + 7; 
    //println('d');
   }
  }
 }

void DieScreen(){
 if(x >= 700){
   W = W + 5;
   fill(255, 0, 0);
   rect(width/2, 925, W, 10); 
 }
 if(x <= 100){
   W = W + 5;
   fill(255, 0, 0);
   rect(width/2 , 925, W, 10); 
 }
 if(x >= 101 && x <= 699 && W >= 1){
   W = W - 1;
   fill(255, 0, 0);
   rect(width/2, 925, W, 10); 

 }
    //Grass detect
 if(W >= 825){
   //health bar
   fill(0);
   rect(width/2, 1000, width, 175);
   fill(255);
   text("YOU TOTALED YOUR CAR", 150, 500);
   text("PRESS SPACE TO RESTART", 135, 600);
   x = 0;
   y = -150;
             DrivingSound.stop();
       if(Boom.isPlaying() == false){
     Boom.play();
    }
  }
     
     //Guardrail detect
  if(x <= -10){
    //death screen
    fill(0);
    rect(width/2, 1000, width, 175);    textSize(50);
    fill(255);
    text("YOU HIT THE GUARDRAIL", 150, height/2);
    text("PRESS 'SPACE' TO RESTART", 125, 600);
     x = -160; 
     W = 0;
               DrivingSound.stop();
       if(Boom.isPlaying() == false){
     Boom.play();
    }
  }
    if(x >= 810){
    //death screen
    fill(0);
    rect(width/2, 1000, width, 175);    textSize(50);
    fill(255);
    text("YOU HIT THE GUARDRAIL", 150, height/2);
    text("PRESS 'SPACE' TO RESTART", 125, 600);
     x = 950;
     W = 0;
               DrivingSound.stop();
       if(Boom.isPlaying() == false){
     Boom.play();
    }
  }
  if(y >= 1050){
   fill(0);
   rect(width/2, 1000, width, 175);
   fill(255);
   text("The Police Have Caught You", 115, height/2);
   text("Press SPACE to restart", 175, 600);
             DrivingSound.stop();
       if(Boom.isPlaying() == false){
     Boom.play();
    }
  }
}
 
  void Collision(AICar ai){
  if(y <= ai.y + 200 && y >= ai.y - 200){
    if(x >= ai.x - 100 && x <= ai.x + 100){
     fill(0);
     rect(width/2, 1000, width, 175);     
     fill(255);
     text("The Police Have Caught You", 115, height/2);
     text("Press SPACE to restart", 175, 600);
     y = 1500;
     x = ai.x;
     //delay(5000);
          DrivingSound.stop();
       if(Boom.isPlaying() == false){
     Boom.play();
    }
   }
  }
  if(y >= 1050){
   y = 1500; 
             DrivingSound.stop();
       if(Boom.isPlaying() == false){
     Boom.play();
    }
  }
 }
}
