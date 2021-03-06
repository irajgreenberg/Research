/*
 Curves III
 Ira Greenberg, December 4, 2005
 This takes some time to render
 Updated, January 11, 2014
 */

// changable variables
int particles = 125;
int timeLimit = 2000;
float particleSpan = 2;
float accelMin = .005;
float accelMax = .2;
float strokeWtMin = 1.25;
float strokeWtMax = 1.6;
float materialMin = .25;
float materialMax = .99;
float gravity = .9;

// not meant to be changed
int timer;
float[]x = new float[particles];
float[]y = new float[particles];
float[]xSpeed = new float[particles];
float[]ySpeed = new float[particles];
float[]accel = new float[particles];
float[]material = new float[particles];
float[]strokeWts = new float[particles];

void setup(){
  size(800, 400);
  background(0);
  stroke(255);

  //fill speed arrays with initial values
  for ( int i =0; i< particles; i++){
    x[i] = random(width/2-10, width/2+10);
    xSpeed[i] = random(-particleSpan, particleSpan);
    accel[i] = random(accelMin, accelMax);
    material[i] = random(materialMin, materialMax);
    strokeWts[i] = random(strokeWtMin, strokeWtMax);
  }

  for ( int i =0; i< particles; i++){
    //timer controls while loop
    timer = 0;
    strokeWeight(strokeWts[i]);

    while(timer++ < timeLimit){
      x[i]+=xSpeed[i];
      // double assignment creates y acceleration
      ySpeed[i]+=accel[i];
      y[i]+=ySpeed[i];
      point(x[i], y[i]);

      // check ground dection
      if ( y[i]>=height){
        // reverse particle direction
        ySpeed[i]*=-1*material[i];
        // lower particle speed
        ySpeed[i]*=gravity;
        // keep particle from sliding out of window
        y[i]=height;
      }
      // check wall dection
      if ( x[i]>=width || x[i]<0){
        // reverse particle horizontal direction
        xSpeed[i]*=-1;
      }
    }
  }
}

