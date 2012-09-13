void setup () {
  //set the size of the window
  size(600, 600);
  frameRate(30);
  float deg = 45.0;
  float rad = radians(deg);
}

void draw () {
  //draw background
  background(16,89,246);
  
  // set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  // draw kanye's body
  fill(29,16,44);
  noStroke();
  arc(300, 600, 450, 300, PI, HALF_PI+PI);
  arc(300, 600, 450, 300, HALF_PI+PI, TWO_PI);
  
  // draw kanye's tshirt genius
  fill(255-mouseX,255,255-mouseY);
  textSize(60);
  text("GENIUS", 200, 595); 
  
  //SIDEBURN ARCHES//
  noFill();
  stroke(22,17,24);
  strokeWeight(35);
  //LEFT
  arc(260, 270, 200, 370, PI, PI+QUARTER_PI);
  //RIGHT
  strokeWeight(25);
  arc(350, 250, 200, 300, PI+QUARTER_PI, TWO_PI+QUARTER_PI);
  
  // draw kanye's head shape
  stroke(45,29,16);
  strokeWeight(2);
  fill(80,58,45);
  ellipse(300,300,300,450);
 
  //kanye nose
  stroke(45,29,16);
  strokeWeight(2);
  noFill();
  arc(305, 360, 100, 110, PI+HALF_PI+QUARTER_PI, TWO_PI+PI); 
 //NOSTRILS
  /*noStroke();
  fill(0);
  ellipse(280,395,30,12);  
  ellipse(320,395,30,12);*/
  
  //draw kanye's eyes
  noStroke();
  fill(255);
  ellipse(245,300,100,120);
  ellipse(355,300,100,120);
  
  //draw kanye's pupils
  noStroke();
  fill(0);
  ellipse(265,290,15,15);
  ellipse(335,290,15,15);
  
  //draw kanye's hair
  fill(22,17,24);
  stroke(22,17,24);
  //NEED HELP WITH HAIR ARCHES :(//
  arc(300, 140, 245, 80, HALF_PI, PI);
  arc(300, 140, 245, 80, 0, HALF_PI);
  arc(300, 140, 248, 150, PI, TWO_PI);
  
  // draw kanye's ears
  // left ear
  stroke(45,29,16);
  strokeWeight(2);
  fill(80,58,45);
  arc(155, 300, 60, 60, HALF_PI, PI+HALF_PI);
  // right ear
  stroke(45,29,16);
  strokeWeight(2);
  fill(80,58,45);
  arc(445, 300, 60, 60, PI+HALF_PI, TWO_PI+HALF_PI);
  // left ear inner squiggle
  stroke(45,29,16);
  strokeWeight(2);
  noFill();
  arc(150, 300, 30, 30, HALF_PI, PI+HALF_PI);
  // right ear inner squiggle
  stroke(45,29,16);
  strokeWeight(2);
  noFill();
  arc(444, 300, 30, 30, PI+HALF_PI, TWO_PI+HALF_PI);
  
  // draw kanye's eyebrows
  stroke(22,17,24);
  strokeWeight(20);
  line (205,225,280,240);
  line (320,240,395,225);
  
  // draw kanye's hipster glasses
  stroke(150+mouseY,21+mouseX,25);
  strokeWeight(10);
  noFill();
  //left
  ellipse(240,300,120,90);
  line(150,265,163,291);
  strokeWeight(12);
  line(164,290,175,292);
  //right
  strokeWeight(10);
  ellipse(360,300,120,90);
  line(450,265,437,291);
  strokeWeight(12);
  line(436,290,425,292);
  // middle-top
  line(300,290,300,260);
  strokeWeight(10);
  line(250,255,350,255);
  strokeWeight(18);
  line(280,262,320,262);
  //middle hipster glasses lines
  strokeWeight(7);
  line(200,270,400,270);
  line(190,285,410,285);
  line(180,300,420,300);  
  line(185,315,415,315);
  line(193,330,405,330);
  
  //kanye goatee
  stroke(22,17,24);
  noFill();
  strokeWeight(15);
  ellipse(300,475,150,90);
  
  //kanye mouth
  stroke(45,29,16);
  strokeWeight(2);
  fill(80,58,45);
  arc(310, 480, 100, 20, PI, PI+HALF_PI+QUARTER_PI);

}

void mousePressed() {
  println("I hate when I'm on a flight and I wake up with a water bottle next to me like oh great now I gotta be responsible for this water bottle");
}
