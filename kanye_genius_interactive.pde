// kanye the genius, drawn in processing
// by Sam Slover, September 9, 2012 
// Pinky animation code contribute by Jon Wasserman

// set color variables (background, shirt color, text color, glasses)
float backgroundR = 16;
float backgroundG = 89;
float backgroundB = 246;

float shirtColorR = 19;
float shirtColorG = 16;
float shirtColorB = 44;

float geniusR = 255;
float geniusG = 255;
float geniusB = 255;

float glassesR = 150;
float glassesG = 21;
float glassesB = 25;

//varirables for kanye's shirt/body position
boolean bodyPosition = true;
float kanyeShirtPositionX = 301;
float kanyeShirtPositionY = 600; 
float shirtTextX = 200;
float shirtTextY = 595;

//varirables for kanye's head position
boolean headPosition = true;
float kanyeLeftSideburnX = 260;
float kanyeLeftSideburnY = 270;
float kanyeRightSideburnX = 350;
float kanyeRightSideburnY = 250;
float kanyeHeadX = 300;
float kanyeHeadY = 300;
float kanyeNoseX = 305;
float kanyeNoseY = 360;
float kanyeLeftEyeX = 245;
float kanyeLeftEyeY = 300;
float kanyeRightEyeX = 355;
float kanyeRightEyeY = 300;
float kanyeLeftPupilX = 265;
float kanyeLeftPupilY = 290;
float kanyeRightPupilX = 335;
float kanyeRightPupilY = 290;
float kanyeHairX = 300;
float kanyeHairY = 140;
float kanyeLeftEarX = 155;
float kanyeLeftEarY = 300;
float kanyeRightEarX = 445;
float kanyeRightEarY = 300;
float kanyeLeftEar2X = 150;
float kanyeLeftEar2Y = 300;
float kanyeRightEar2X = 444;
float kanyeRightEar2Y = 300;
float kanyeLeftEyebrowX = 205;
float kanyeLeftEyebrowY = 225;
float kanyeRightEyebrowX = 320;
float kanyeRightEyebrowY = 240;
float kanyeGlassesCircleLeftX = 240;
float kanyeGlassesCircleLeftY = 300;
float kanyeGlassesLine1LeftX = 150;
float kanyeGlassesLine1LeftY = 265;
float kanyeGlassesLine1v2LeftX = 163;
float kanyeGlassesLine1v2LeftY = 291;
float kanyeGlassesLine2LeftX = 164;
float kanyeGlassesLine2LeftY = 290;
float kanyeGlassesLine2v2LeftX = 175;
float kanyeGlassesLine2v2LeftY = 292;
float kanyeGlassesCircleRightX = 360;
float kanyeGlassesCircleRightY = 300;
float kanyeGlassesLine1RightX = 450;
float kanyeGlassesLine1RightY = 265;
float kanyeGlassesLine1v2RightX = 437;
float kanyeGlassesLine1v2RightY = 291;
float kanyeGlassesLine2RightX = 436;
float kanyeGlassesLine2RightY = 290;
float kanyeGlassesLine2v2RightX = 425;
float kanyeGlassesLine2v2RightY = 292;
//middle area of glasses
float middleLine1X = 300;
float middleLine1Y = 290;
float middleLine1v2X = 300;
float middleLine1v2Y = 260;
float middleLine2X = 250;
float middleLine2Y = 255;
float middleLine2v2X = 350;
float middleLine2v2Y = 255;
float middleLine3X = 280;
float middleLine3Y = 262;
float middleLine3v2X = 320;
float middleLine3v2Y = 262;
float middleLine4X = 200;
float middleLine4Y = 270;
float middleLine4v2X = 400;
float middleLine4v2Y = 270;
float middleLine5X = 190;
float middleLine5Y = 285;
float middleLine5v2X = 410;
float middleLine5v2Y = 285;
float middleLine6X = 180;
float middleLine6Y = 300;
float middleLine6v2X = 420;
float middleLine6v2Y = 300;
float middleLine7X = 185;
float middleLine7Y = 315;
float middleLine7v2X = 415;
float middleLine7v2Y = 315;
float middleLine8X = 193;
float middleLine8Y = 330;
float middleLine8v2X = 405;
float middleLine8v2Y = 330;
//kanye mouth and goatee
float goateeX = 300;
float goateeY = 475;
float mouthX = 310;
float mouthY = 480;

//set pinky variables
int locX=0;
int counter=0;
int locY=0;

void setup () {
  //set the size of the window
  size(600, 600);
  frameRate(30);
}

void draw () {
  //draw random background when d is pressed
  if (keyPressed) {
    if (key == 'd' || key == 'D') {
      backgroundR = random (0,255);
      backgroundG = random (0,255); 
      backgroundB = random (0,255);
    }
  }
  background(backgroundR,backgroundG,backgroundB);
  
  // set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  // draw jon's pinky animation in background on mouse click
  if (mousePressed == true) { 
      pushMatrix();
      translate(locX, locY);
      stroke(150, 0, 150);
      fill(150, 0, 150);
      ellipse(70, 80, 70, 70);
    
      rect(70, 100, 70, 35);
    
      stroke(0);
      fill(0);
      triangle(35, 119, 45, 107, 55, 119);
      triangle(60, 119, 70, 107, 80, 119);
      triangle(85, 119, 95, 107, 105, 119);
    
    
      // white eyes
      fill(255);
      stroke(255);
      ellipse (57, 75, 15, 20);
      ellipse (82, 75, 15, 20);
    
      // black irises
      fill(0);
      stroke(0);
      ellipse(62, 75, 5, 7);
      ellipse(88, 75, 5, 7);
    
      popMatrix();
      locX=locX+5;
      if (locX>=700) {
        locX=-100;
        counter=counter+5;
        locY=locY+15;
      }
      locX=locX+locY+counter;
      if (locY>=600) {
    
        locY=0;
        locX=0;
      
      }
      //adding pellet pox
      else if (locY>=599 || locY<=600);
     {
      float diam;
      float x;
      float y;
    
      diam = random(20);
      x = random(width);
      y = random(height);
    
      // Use values to draw an ellipse
      noStroke();
      
      fill(random(255),random(255),random(255));
      ellipse(x, y, diam, diam);
      }
  }
  // draw kanye's body
  fill(shirtColorR,shirtColorG,shirtColorB);
  noStroke();
  
  // PROBLEM SOLVED with boolean in void keyPressed:)
  // Need help here, i want to make it where the user is only clicking "a" and the program
  // knows whether to move left or right based on the currect X position
  //&& kanyeShirtPositionX > 300// 
  //&& kanyeShirtPositionX < 300//
  
  if (bodyPosition == true){ 
    kanyeShirtPositionX = constrain (kanyeShirtPositionX,250,280);
    kanyeShirtPositionY = constrain (kanyeShirtPositionY,570,600);
    }
  else if (bodyPosition == false) {
    kanyeShirtPositionX = constrain (kanyeShirtPositionX,320,350);
    kanyeShirtPositionY = constrain (kanyeShirtPositionY,570,600);
    }

  arc(kanyeShirtPositionX, kanyeShirtPositionY, 450, 300, PI, HALF_PI+PI);
  arc(kanyeShirtPositionX, kanyeShirtPositionY, 450, 300, HALF_PI+PI, TWO_PI);
  
  // draw kanye's tshirt genius, moving it with his body
  
    if (bodyPosition == true){ 
    shirtTextX = 200 - (300-kanyeShirtPositionX);
    shirtTextY = 595 - (600-kanyeShirtPositionY);
    }
    else if (bodyPosition == false) {
    shirtTextX = 200 + (kanyeShirtPositionX-300);
    shirtTextY = 595 - (600-kanyeShirtPositionY);
    }
  
  // set random color of GENIUS text, based on click of d
  
    if (keyPressed) {
    if (key == 'd' || key == 'D') {
      geniusR = random (0,255);
      geniusG = random (0,255); 
      geniusB = random (0,255);
    }
  }

  fill(geniusR,geniusG,geniusB);
  textSize(60);
  text("GENIUS", shirtTextX, shirtTextY); 
  
  // set statement to control head bob on key clicks
  // question: how can I do this more efficiently? (i'm decreasing each Y by 5)
    if (headPosition == true) {
        kanyeLeftSideburnX = 260;
        kanyeLeftSideburnY = 260;
        kanyeRightSideburnX = 350;
        kanyeRightSideburnY = 240;
        kanyeHeadX = 300;
        kanyeHeadY = 290;
        kanyeNoseX = 305;
        kanyeNoseY = 350;
        kanyeLeftEyeX = 245;
        kanyeLeftEyeY = 290;
        kanyeRightEyeX = 355;
        kanyeRightEyeY = 290;
        kanyeLeftPupilX = 265;
        kanyeLeftPupilY = 280;
        kanyeRightPupilX = 335;
        kanyeRightPupilY = 280;
        kanyeHairX = 300;
        kanyeHairY = 130;
        kanyeLeftEarX = 155;
        kanyeLeftEarY = 290;
        kanyeRightEarX = 445;
        kanyeRightEarY = 290;
        kanyeLeftEar2X = 150;
        kanyeLeftEar2Y = 290;
        kanyeRightEar2X = 444;
        kanyeRightEar2Y = 290;
        kanyeLeftEyebrowX = 205;
        kanyeLeftEyebrowY = 215;
        kanyeRightEyebrowX = 320;
        kanyeRightEyebrowY = 230;
        kanyeGlassesCircleLeftX = 240;
        kanyeGlassesCircleLeftY = 290;
        kanyeGlassesLine1LeftX = 150;
        kanyeGlassesLine1LeftY = 255;
        kanyeGlassesLine2LeftX = 164;
        kanyeGlassesLine2LeftY = 280;
        kanyeGlassesCircleRightX = 360;
        kanyeGlassesCircleRightY = 290;
        kanyeGlassesLine1LeftX = 150;
        kanyeGlassesLine1LeftY = 255;
        kanyeGlassesLine1v2LeftX = 163;
        kanyeGlassesLine1v2LeftY = 281;
        kanyeGlassesLine2LeftX = 164;
        kanyeGlassesLine2LeftY = 280;
        kanyeGlassesLine2v2LeftX = 175;
        kanyeGlassesLine2v2LeftY = 282;
        kanyeGlassesCircleRightX = 360;
        kanyeGlassesCircleRightY = 290;
        kanyeGlassesLine1RightX = 450;
        kanyeGlassesLine1RightY = 255;
        kanyeGlassesLine1v2RightX = 437;
        kanyeGlassesLine1v2RightY = 281;
        kanyeGlassesLine2RightX = 436;
        kanyeGlassesLine2RightY = 280;
        kanyeGlassesLine2v2RightX = 425;
        kanyeGlassesLine2v2RightY = 282;
        //middle area of glasses
        middleLine1X = 300;
        middleLine1Y = 280;
        middleLine1v2X = 300;
        middleLine1v2Y = 250;
        middleLine2X = 250;
        middleLine2Y = 245;
        middleLine2v2X = 350;
        middleLine2v2Y = 245;
        middleLine3X = 280;
        middleLine3Y = 252;
        middleLine3v2X = 320;
        middleLine3v2Y = 252;
        middleLine4X = 200;
        middleLine4Y = 260;
        middleLine4v2X = 400;
        middleLine4v2Y = 260;
        middleLine5X = 190;
        middleLine5Y = 275;
        middleLine5v2X = 410;
        middleLine5v2Y = 275;
        middleLine6X = 180;
        middleLine6Y = 290;
        middleLine6v2X = 420;
        middleLine6v2Y = 290;
        middleLine7X = 185;
        middleLine7Y = 305;
        middleLine7v2X = 415;
        middleLine7v2Y = 305;
        middleLine8X = 193;
        middleLine8Y = 320;
        middleLine8v2X = 405;
        middleLine8v2Y = 320;
        goateeX = 300;
        goateeY = 465;
        mouthX = 310;
        mouthY = 470;
    }
    // reset back to initial values
    else if (headPosition == false)  {
        kanyeLeftSideburnX = 260;
        kanyeLeftSideburnY = 270;
        kanyeRightSideburnX = 350;
        kanyeRightSideburnY = 250;
        kanyeHeadX = 300;
        kanyeHeadY = 300;
        kanyeNoseX = 305;
        kanyeNoseY = 360;
        kanyeLeftEyeX = 245;
        kanyeLeftEyeY = 300;
        kanyeRightEyeX = 355;
        kanyeRightEyeY = 300;
        kanyeLeftPupilX = 265;
        kanyeLeftPupilY = 290;
        kanyeRightPupilX = 335;
        kanyeRightPupilY = 290;
        kanyeHairX = 300;
        kanyeHairY = 140;
        kanyeLeftEarX = 155;
        kanyeLeftEarY = 300;
        kanyeRightEarX = 445;
        kanyeRightEarY = 300;
        kanyeLeftEar2X = 150;
        kanyeLeftEar2Y = 300;
        kanyeRightEar2X = 444;
        kanyeRightEar2Y = 300;
        kanyeLeftEyebrowX = 205;
        kanyeLeftEyebrowY = 225;
        kanyeRightEyebrowX = 320;
        kanyeRightEyebrowY = 240;
        kanyeGlassesCircleLeftX = 240;
        kanyeGlassesCircleLeftY = 300;
        kanyeGlassesLine1LeftX = 150;
        kanyeGlassesLine1LeftY = 265;
        kanyeGlassesLine2LeftX = 164;
        kanyeGlassesLine2LeftY = 290;
        kanyeGlassesCircleRightX = 360;
        kanyeGlassesCircleRightY = 300;
        kanyeGlassesLine1LeftX = 150;
        kanyeGlassesLine1LeftY = 265;
        kanyeGlassesLine1v2LeftX = 163;
        kanyeGlassesLine1v2LeftY = 291;
        kanyeGlassesLine2LeftX = 164;
        kanyeGlassesLine2LeftY = 290;
        kanyeGlassesLine2v2LeftX = 175;
        kanyeGlassesLine2v2LeftY = 292;
        kanyeGlassesCircleRightX = 360;
        kanyeGlassesCircleRightY = 300;
        kanyeGlassesLine1RightX = 450;
        kanyeGlassesLine1RightY = 265;
        kanyeGlassesLine1v2RightX = 437;
        kanyeGlassesLine1v2RightY = 291;
        kanyeGlassesLine2RightX = 436;
        kanyeGlassesLine2RightY = 290;
        kanyeGlassesLine2v2RightX = 425;
        kanyeGlassesLine2v2RightY = 292;
        //middle area of glasses
        middleLine1X = 300;
        middleLine1Y = 290;
        middleLine1v2X = 300;
        middleLine1v2Y = 260;
        middleLine2X = 250;
        middleLine2Y = 255;
        middleLine2v2X = 350;
        middleLine2v2Y = 255;
        middleLine3X = 280;
        middleLine3Y = 262;
        middleLine3v2X = 320;
        middleLine3v2Y = 262;
        middleLine4X = 200;
        middleLine4Y = 270;
        middleLine4v2X = 400;
        middleLine4v2Y = 270;
        middleLine5X = 190;
        middleLine5Y = 285;
        middleLine5v2X = 410;
        middleLine5v2Y = 285;
        middleLine6X = 180;
        middleLine6Y = 300;
        middleLine6v2X = 420;
        middleLine6v2Y = 300;
        middleLine7X = 185;
        middleLine7Y = 315;
        middleLine7v2X = 415;
        middleLine7v2Y = 315;
        middleLine8X = 193;
        middleLine8Y = 330;
        middleLine8v2X = 405;
        middleLine8v2Y = 330;
        goateeX = 300;
        goateeY = 475;
        mouthX = 310;
        mouthY = 480;
    }  
  
  //SIDEBURN ARCHES//
  noFill();
  stroke(22,17,24);
  strokeWeight(35);
  //LEFT
  arc(kanyeLeftSideburnX, kanyeLeftSideburnY, 200, 370, PI, PI+QUARTER_PI);
  //RIGHT
  strokeWeight(25);
  arc(kanyeRightSideburnX, kanyeRightSideburnY, 200, 300, PI+QUARTER_PI, TWO_PI+QUARTER_PI);
  
  // draw kanye's head shape
  stroke(45,29,16);
  strokeWeight(2);
  fill(80,58,45);
  ellipse(kanyeHeadX, kanyeHeadY,300,450);
 
  //kanye nose
  stroke(45,29,16);
  strokeWeight(2);
  noFill();
  arc(kanyeNoseX, kanyeNoseY, 100, 110, PI+HALF_PI+QUARTER_PI, TWO_PI+PI); 
  
  //draw kanye's eyes
  noStroke();
  fill(255);
  ellipse(kanyeLeftEyeX,kanyeLeftEyeY,100,120);
  ellipse(kanyeRightEyeX,kanyeRightEyeY,100,120);
  
  //draw kanye's pupils
  noStroke();
  fill(0);
  ellipse(kanyeLeftPupilX,kanyeLeftPupilY,15,15);
  ellipse(kanyeRightPupilX,kanyeRightPupilY,15,15);
  
  //draw kanye's hair
  fill(22,17,24);
  stroke(22,17,24);
  arc(kanyeHairX, kanyeHairY, 245, 80, HALF_PI, PI);
  arc(kanyeHairX, kanyeHairY, 245, 80, 0, HALF_PI);
  arc(kanyeHairX, kanyeHairY, 248, 150, PI, TWO_PI);
  
  // draw kanye's ears
  // left ear
  stroke(45,29,16);
  strokeWeight(2);
  fill(80,58,45);
  arc(kanyeLeftEarX, kanyeLeftEarY, 60, 60, HALF_PI, PI+HALF_PI);
  // right ear
  stroke(45,29,16);
  strokeWeight(2);
  fill(80,58,45);
  arc(kanyeRightEarX, kanyeRightEarY, 60, 60, PI+HALF_PI, TWO_PI+HALF_PI);
  // left ear inner squiggle
  stroke(45,29,16);
  strokeWeight(2);
  noFill();
  arc(kanyeLeftEar2X, kanyeLeftEar2Y, 30, 30, HALF_PI, PI+HALF_PI);
  // right ear inner squiggle
  stroke(45,29,16);
  strokeWeight(2);
  noFill();
  arc(kanyeRightEar2X, kanyeRightEar2Y, 30, 30, PI+HALF_PI, TWO_PI+HALF_PI);
  
  // draw kanye's eyebrows
  stroke(22,17,24);
  strokeWeight(20);
  line (kanyeLeftEyebrowX,kanyeLeftEyebrowY,280,240);
  line (kanyeRightEyebrowX,kanyeRightEyebrowY,395,225);
  
  // set random color of glasses, based on click of d
  
  if (keyPressed) {
   if (key == 'd' || key == 'D') {
     glassesR = random (0,255);
     glassesG = random (0,255); 
     glassesB = random (0,255);
    }
  }  
  
  // draw kanye's hipster glasses
  stroke(glassesR,glassesG,glassesB);
  strokeWeight(10);
  noFill();
  //left
  ellipse(kanyeGlassesCircleLeftX,kanyeGlassesCircleLeftY,120,90);
  line(kanyeGlassesLine1LeftX,kanyeGlassesLine1LeftY,kanyeGlassesLine1v2LeftX,kanyeGlassesLine1v2LeftY);
  strokeWeight(12);
  line(kanyeGlassesLine2LeftX,kanyeGlassesLine2LeftY,kanyeGlassesLine2v2LeftX,kanyeGlassesLine2v2LeftY);
  //right
  strokeWeight(10);
  ellipse(kanyeGlassesCircleRightX,kanyeGlassesCircleRightY,120,90);
  line(kanyeGlassesLine1RightX,kanyeGlassesLine1RightY,kanyeGlassesLine1v2RightX,kanyeGlassesLine1v2RightY);
  strokeWeight(12);
  line(kanyeGlassesLine2RightX,kanyeGlassesLine2RightY,kanyeGlassesLine2v2RightX,kanyeGlassesLine2v2RightY);
  // middle-top
  line(middleLine1X,middleLine1Y,middleLine1v2X,middleLine1v2Y);
  strokeWeight(10);
  line(middleLine2X,middleLine2Y,middleLine2v2X,middleLine2v2Y);
  strokeWeight(18);
  line(middleLine3X,middleLine3Y,middleLine3v2X,middleLine3v2Y);
  //middle hipster glasses lines
  strokeWeight(7);
  line(middleLine4X,middleLine4Y,middleLine4v2X,middleLine4v2Y);
  line(middleLine5X,middleLine5Y,middleLine5v2X,middleLine5v2Y);
  line(middleLine6X,middleLine6Y,middleLine6v2X,middleLine6v2Y);  
  line(middleLine7X,middleLine7Y,middleLine7v2X,middleLine7v2Y);
  line(middleLine8X,middleLine8Y,middleLine8v2X,middleLine8v2Y);
  
  //kanye goatee
  stroke(22,17,24);
  noFill();
  strokeWeight(15);
  ellipse(goateeX,goateeY,150,90);
  
  //kanye mouth
  stroke(45,29,16);
  strokeWeight(2);
  fill(80,58,45);
  arc(mouthX,mouthY, 100, 20, PI, PI+HALF_PI+QUARTER_PI);

}

void keyPressed() {
   if (key == 'a' || key == 'A') {
    bodyPosition = !bodyPosition;
    }
   if (key == 's' || key == 'S') {
    headPosition = !headPosition;
    } 
   }  
   
// IGNORE - for review only

// bool headOnLeft
  //if (keyPressed pressed A) 
  // headOnLeft = !headOnLeft; 
  
/*
if (headOnLeft) {
  move head right
} else {
  move head left 
}

*/
