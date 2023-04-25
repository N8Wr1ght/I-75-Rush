class AICar{
    ///////////////////////////////// initializing Vars ///////////////////////////////////////////////////////////////////
  float x;
  float y;
  int w;
  int h;
  color c;
  //////////////////////////////// constructor ///////////////////////////////////////////////////////////////////////
  AICar(float startingX, int startingY, int startingW, int startingH, color carColor){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    c = carColor;
   }
   void render(){
     fill(c);
     rect(x,y,w,h);
   }

void move1(){
  y = y + 10;
 }
 
 void move2(){
  y = y + 5; 
 }
 
 void move3(){
  y = y + 15;
 }
 
 void Return1(){
  if(y >= 1200){
    y = y - 1300;
    //c = color(random(0, 255), random(0, 255), random(0, 255));
  }
 }
 
  void Return2(){
  if(y >= 1200){
    y = y - 3300;
    //c = color(random(0, 255), random(0, 255), random(0, 255));
  }
 }
}
