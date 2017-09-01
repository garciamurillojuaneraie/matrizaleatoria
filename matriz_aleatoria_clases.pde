matrizaleatorea juan;


void setup(){
  size (800,800);
  juan = new matrizaleatorea(100,100,100,5,20);
  
}


void draw(){
  juan.crecer();
  juan.display();
  
}

class matrizaleatorea{
  float x,y;
  int tamano;
  int tcuad;
  int t2;
  int t3;
  
  matrizaleatorea(float x_,float y_, int tamano_, int tcuad_, int t2_){
    x = x_;
    y = y_;
    tamano = tamano_;
    tcuad = tcuad_;
    t2 = t2_;
  }
  
  
  
  void crecer(){
      if(((mouseX>x) & (mouseX < x+tamano))&((mouseY>y) & (mouseY < y+tamano)))
      t3=t2;
      else
      t3=tcuad;
  }
  
  void display(){
    noStroke();
    for (int i = 0; i<tamano; i+=t3) {
      for (int j = 0; j<tamano; j+=t3) {
        fill(random(255));
        rect(x+i, y+j, t3, t3);
      }
    }
  }
}