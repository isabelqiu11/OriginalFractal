int i = 30;
int size = 450;
  public void settings() {
    size(500,500);
    
  }

  public void setup(){
    background(0);
  }
  public void draw(){
   myFractal(250,250,size);
  }
  public void mousePressed(){
    if(i>0){
      i=i-5;
      size=size+100;
    }
  }

  
  
  
  public void myFractal(int x, int y, int size) {
    if(size <= i){
      noStroke();
      fill(255,72,179);
      ellipse(x,y,size,size);
      fill(255,191,228);
      triangle(x-size/2,y+size/6,x+size/2,y+size/6,x,y-size/2);
    }else{
      myFractal(x,y-size/4,size/2);
      myFractal(x,y+size/4,size/2);
      myFractal(x-size/3,y,size/3);
      myFractal(x+size/3,y,size/3);
    }
  }
