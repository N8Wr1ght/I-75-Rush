class Road{
     ///////////////////////////////// initializing Vars ///////////////////////////////////////////////////////////////////
  float x;
  int y;
  int w;
  int h;
  color c;
  //////////////////////////////// constructor ///////////////////////////////////////////////////////////////////////
  Road(float startingX, int startingY, int startingW, int startingH, color lineColor){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    c = lineColor;
   } 
  void render(){
     fill(c);
     rect(x,y,w,h);
   }
   void moveLine(){
  y = y + 20;
 }
  void ReturnLine(){
  if(y == 1100){
    y = y - 1200;
  }
 }
 void ReturnLine2(){
   if(y >= 1000){
     y = y - 10100;
   }
 }
  void ReturnLine3(){
   if(y >= 1000){
     y = y - 20100;
   }
 }
}
