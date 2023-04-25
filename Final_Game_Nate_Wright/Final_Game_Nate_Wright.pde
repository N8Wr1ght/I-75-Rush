/////////////////////////////////////////SOUNDS////////////////////////////////////////////////////
import processing.sound.*;

SoundFile DrivingSound;
SoundFile Boom;

float x;
float y;
int H = 0;

color change1 = color(random(0, 255), random(0, 255), random(0, 255));
color change2 = color(random(0, 255), random(0, 255), random(0, 255));
color change3 = color(random(0, 255), random(0, 255), random(0, 255));


int state = 0;
int scoreCount = 0;
// represents the time we start
int startTime;
// represents the time we press the lap button
int currentTime;
//interval of time
int interval;

////////////////////////////////////////////////////////////CHANGING COLORS//////////////////////////////////////////////////////


///////////////////////////////////////////PLAYER CAR CODE///////////////////////////////////////////////////////////////
playerCar c1;

////////////////////////////////////////////AI CAR 1 CODE/////////////////////////////////////////////////////////////////////////
AICar a1;
AICar a2;
AICar a3;
AICar a4;
AICar a5;
AICar a6;
AICar a7;
AICar a8;
AICar a9;
AICar a10;
AICar a11;
AICar a12;
AICar a13;

/////////////////////////////////////AI CAR 2 CODE/////////////////////////////////////////////////////////////////////////////////
AICar b1;
AICar b2;
AICar b3;
AICar b4;
AICar b5;
AICar b6;
AICar b7;
AICar b8;
AICar b9;
AICar b10;
AICar b11;
AICar b12;
AICar b13;

////////////////////////////////////////AI CAR 3 CODE///////////////////////////////////////////////////////////////////////////////
AICar d1;
AICar d2;
AICar d3;
AICar d4;
AICar d5;
AICar d6;
AICar d7;
AICar d8;
AICar d9;
AICar d10;
AICar d11;
AICar d12;
AICar d13;

/////////////////////////////////////////ROAD LINES////////////////////////////////////////////////////////////////////////////////
Road r1;
Road r2;
Road r3;
Road r4;
Road r5;
Road r6;
Road r7;
Road r8;
Road r9;
Road r10;
Road r11;
Road r12;
Road r13;
Road r14;

/////////////////////////////////////////////////DEBRIS/////////////////////////////////////////////////////////////////////////////
Road n1;
Road n2;
Road n3;





void setup(){
  size(800,1000);
  rectMode(CENTER);
  rect(500,100,100,50);
  //start the stopwatch
  startTime = millis();
  //time between timer triggers
  interval = 1;
  
  x = width/2;
  y = 800;
  
  DrivingSound = new SoundFile(this, "DrivingSound.mp3");
  Boom = new SoundFile(this, "Boom.wav");
  
  /////////////////////////////////////////////////////////////ROAD LINE CODE//////////////////////////////////////////////////////////////////
  r1 = new Road(300, 0, 25, 100, color(255));
  r2 = new Road(300, 200, 25, 100, color(255));
  r3 = new Road(300, 400, 25, 100, color(255));
  r4 = new Road(300, 600, 25, 100, color(255));
  r5 = new Road(300, 800, 25, 100, color(255));
  r6 = new Road(300, 1000, 25, 100, color(255));
  r7 = new Road(500, 0, 25, 100, color(255));
  r8 = new Road(500, 200, 25, 100, color(255));
  r9 = new Road(500, 400, 25, 100, color(255));
  r10 = new Road(500, 600, 25, 100, color(255));
  r11 = new Road(500, 800, 25, 100, color(255));
  r12 = new Road(500, 1000, 25, 100, color(255));
  r13 = new Road(100, height/2, 25, 1000, color(255));
  r14 = new Road(700, height/2, 25, 1000, color(255));
  
  ///////////////////////////////////////////////////////////////DEBRIS CODE//////////////////////////////////////////////////////////////////
  n1 = new Road(50, 0, 25, 50, color(50, 250, 100));
  n2 = new Road(750, -5000, 25, 50, color(50, 250, 100));
  n3 = new Road(50, -1000, 50, 50, color(255));
  
}



void draw(){
  
    background(70);
switch(state){

case 0:
  DrivingSound.stop();
  Boom.stop();

  background(0);
  fill(255);
  textSize(50);
  text("PRESS 'SPACE' TO CONTINUE", 100, 800);
  fill(255, 0, 0);
  text("YOU ARE ON I-75 IN ATLANTA", 115, 500);
  text("AND ARE IN A RUSH TO GO NO WHERE", 10, 600);
  textSize(35);
  fill(255, 200, 0);
  text("DRIVE AS FAR AS POSSIBLE WITHOUT CRASHING", 50, 700);
  scoreCount = 0;
    
    if(H >= 1000){
change1 = color(random(0, 255), random(0, 255), random(0, 255));
change2 = color(random(0, 255), random(0, 255), random(0, 255));
change3 = color(random(0, 255), random(0, 255), random(0, 255));
}
    ///////////////////////////////////////////PLAYER CAR CODE///////////////////////////////////////////////////////////////
  c1 = new playerCar(x, y, 100, 200, color(255, 0, 0));
    
    ////////////////////////////////////////////AI CAR 1 CODE/////////////////////////////////////////////////////////////////////////
  a1 = new AICar(600, H + 200, 100, 200, change1);
  a3 = new AICar(600, 200, 25, 200, color(150));
  a4 = new AICar(655, 130, 15, 35, color(0));
  a5 = new AICar(547, 130, 15, 35, color(0));
  a6 = new AICar(655, 270, 15, 35, color(0));
  a7 = new AICar(547, 270, 15, 35, color(0));
  a8 = new AICar(652, 130, 10, 40, color(150));
  a9 = new AICar(549, 130, 10, 40, color(150));
  a10 = new AICar(652, 270, 10, 40, color(150));
  a11 = new AICar(549, 270, 10, 40, color(150));
  a12 = new AICar(600, 160, 90, 20, color(0));
  a13 = new AICar(600, 260, 90, 20, color(0));
    
    ///////////////////////////////////////////AI CAR 2 CODE//////////////////////////////////////////////////////////////////////////
  b1 = new AICar(200, H + 100, 100, 200, change2);
  b3 = new AICar(200, 100, 25, 200, color(70));
  b4 = new AICar(255, 30, 15, 35, color(0));
  b5 = new AICar(147, 30, 15, 35, color(0));
  b6 = new AICar(255, 170, 15, 35, color(0));
  b7 = new AICar(147, 170, 15, 35, color(0));
  b8 = new AICar(252, 30, 10, 40, color(150));
  b9 = new AICar(149, 30, 10, 40, color(150));
  b10 = new AICar(252, 170, 10, 40, color(150));
  b11 = new AICar(149, 170, 10, 40, color(150));
  b12 = new AICar(200, 60, 90, 20, color(0));
  b13 = new AICar(200, 190, 90, 10, color(0));
    
    ///////////////////////////////////////////////////////////AI CAR 3 CODE//////////////////////////////////////////////////////////////
  d1 = new AICar(width/2, H + 1100, 100, 200, change3);
  d3 = new AICar(width/2, 1030, 25, 45, color(150));
  d4 = new AICar(455, 1030, 15, 35, color(0));
  d5 = new AICar(347, 1030, 15, 35, color(0));
  d6 = new AICar(455, 1170, 15, 35, color(0));
  d7 = new AICar(347, 1170, 15, 35, color(0));
  d8 = new AICar(452, 1030, 10, 40, color(150));
  d9 = new AICar(349, 1030, 10, 40, color(150));
  d10 = new AICar(452, 1170, 10, 40, color(150));
  d11 = new AICar(349, 1170, 10, 40, color(150));
  d12 = new AICar(400, 1060, 90, 20, color(0));
  d13 = new AICar(400, 1160, 90, 70, color(0));
  break;
case 1:
  ////////////////////////////////////////Grass////////////////////////////////////////////////
  fill(0, 200, 30);
  rect(45, height/2, 100, 1000);
  rect(755, height/2, 100, 1000);
    
    if(DrivingSound.isPlaying() == false){
  DrivingSound.play();
    }
  
  ///////////////////////////////////////////////Road Lines/////////////////////////////////////////////////////////////////////////
  r1.render();
  r2.render();
  r3.render();
  r4.render();
  r5.render();
  r6.render();
  r7.render();
  r8.render();
  r9.render();
  r10.render();
  r11.render();
  r12.render();
  r13.render();
  r14.render();
  
  ////////////////////////////////////////////////LINES MOVE///////////////////////////////////////////////////////////////////////
  r1.moveLine();
  r2.moveLine();
  r3.moveLine();
  r4.moveLine();
  r5.moveLine();
  r6.moveLine();
  r7.moveLine();
  r8.moveLine();
  r9.moveLine();
  r10.moveLine();
  r11.moveLine();
  r12.moveLine();
  
  ////////////////////////////////////////////////////LINES RETURN////////////////////////////////////////////////////////////////
  r1.ReturnLine();
  r2.ReturnLine();
  r3.ReturnLine();
  r4.ReturnLine();
  r5.ReturnLine();
  r6.ReturnLine();
  r7.ReturnLine();
  r8.ReturnLine();
  r9.ReturnLine();
  r10.ReturnLine();
  r11.ReturnLine();
  r12.ReturnLine();




  ////////////////////////////////////////////AI CAR CODE/////////////////////////////////////////////////////////////////////////
  a4.render();
  a5.render();
  a6.render();
  a7.render();
  a8.render();
  a9.render();
  a10.render();
  a11.render();
  a1.render();
  a3.render();
  a12.render();
  a13.render();
  
  ////////////////////////////////////////////AI MOVE CODE////////////////////////////////////////////////////////////////////////
  a1.move3();
  a3.move3();
  a4.move3();
  a5.move3();
  a6.move3();
  a7.move3();
  a8.move3();
  a9.move3();
  a10.move3();
  a11.move3();
  a12.move3();
  a13.move3();
  
    ///////////////////////////////////////////AI 3 Return2 CODE////////////////////////////////////////////////////////////////////////
  a1.Return2();
  a3.Return2();
  a4.Return2();
  a5.Return2();
  a6.Return2();
  a7.Return2();
  a8.Return2();
  a9.Return2();
  a10.Return2();
  a11.Return2();
  a12.Return2();
  a13.Return2();
  
    ////////////////////////////////////////////AI CAR 2 CODE/////////////////////////////////////////////////////////////////////////
  b4.render();
  b5.render();
  b6.render();
  b7.render();
  b8.render();
  b9.render();
  b10.render();
  b11.render();
  b1.render();
  b12.render();
  b13.render();
  
  ////////////////////////////////////////////AI 2 MOVE CODE////////////////////////////////////////////////////////////////////////
  b1.move2();
  b4.move2();
  b5.move2();
  b6.move2();
  b7.move2();
  b8.move2();
  b9.move2();
  b10.move2();
  b11.move2();
  b12.move2();
  b13.move2();
  
  ///////////////////////////////////////////AI 2 Return1 CODE////////////////////////////////////////////////////////////////////////
  b1.Return1();
  b4.Return1();
  b5.Return1();
  b6.Return1();
  b7.Return1();
  b8.Return1();
  b9.Return1();
  b10.Return1();
  b11.Return1();
  b12.Return1();
  b13.Return1();
  
    ////////////////////////////////////////////AI CAR 3 CODE/////////////////////////////////////////////////////////////////////////
  d4.render();
  d5.render();
  d6.render();
  d7.render();
  d8.render();
  d9.render();
  d10.render();
  d11.render();
  d1.render();
  d3.render();
  d12.render();
  d13.render();
  
  ////////////////////////////////////////////AI 3 MOVE CODE////////////////////////////////////////////////////////////////////////
  d1.move1();
  d3.move1();
  d4.move1();
  d5.move1();
  d6.move1();
  d7.move1();
  d8.move1();
  d9.move1();
  d10.move1();
  d11.move1();
  d12.move1();
  d13.move1();
  
    ///////////////////////////////////////////AI 3 Return2 CODE////////////////////////////////////////////////////////////////////////
  d1.Return1();
  d3.Return1();
  d4.Return1();
  d5.Return1();
  d6.Return1();
  d7.Return1();
  d8.Return1();
  d9.Return1();
  d10.Return1();
  d11.Return1();
  d12.Return1();
  d13.Return1();
  
      ///////////////////////////////////////////PLAYER CAR CODE///////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////Draw Player Car
  c1.render();

  ///////////////////////////////////////////////Player Movement F
  c1.moveForward();

    ///////////////////////////////////////////////Player Movement B
  c1.moveBack();

    ///////////////////////////////////////////////Player Movement L
  c1.moveLeft();

    ///////////////////////////////////////////////Player Movement R
  c1.moveRight();

    /////////////////////////////////////////SCORE BAR/////////////////////////////////////////////////////////////////////////////////////
  fill(0);
  rect(width/2, 1000, width, 175);
  /////////////////////////////////////////PRINT SCORE///////////////////////////////////////////////////////////////////////////////////
    //update the current time
  currentTime = millis();
  
  if (currentTime - startTime > interval){
    textSize(50);
    fill(255);
    text(scoreCount, 300, 975);
    //println("add");
    
    //reset the timer 
    startTime = millis();
  }
  
  if(currentTime >= 1000){
    scoreCount = scoreCount + 1;
  }
  
  text("SCORE:", 100, 975);
  
  //////////////////////////////////////////////////Player DIE////////////////////////////////////////////////////////////////////
  c1.DieScreen();
  //////////////////////////////////////////////////Player on car collision///////////////////////////////////////////////////////
  c1.Collision(a1);
  c1.Collision(b1);
  c1.Collision(d1);
  
  

break;
 }
 
}
///////////////////////////////////////////////////////////CHANGE STATE///////////////////////////////////////////////////////////////////////
void keyPressed(){
  if(key == ' '){
    state += 1;
  }
  if(state >= 2){
    state = 0;
  }
}


  
  
  
