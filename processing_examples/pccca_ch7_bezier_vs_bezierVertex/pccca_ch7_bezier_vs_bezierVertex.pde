// bezier() vs. bezierVertex()
size(650, 225);
background(255);
rectMode(CENTER);
strokeWeight(2);

//bezier() - no fill
noFill();
bezier(50, 50, 92, 15, 134, 15, 175, 50);
bezier(175, 50, 215, 92, 215, 134, 175, 175);
bezier(175, 175, 135, 205, 105, 205, 75, 175);
bezier(75, 175, 50, 145, 50, 105, 75, 75);
bezier(75, 75, 100, 54, 125, 54, 150, 75);
bezier(150, 75, 175, 100, 175, 125, 150, 150);
bezier(150, 150, 134, 160, 118, 160, 100, 150);
bezier(100, 150, 92, 140, 92, 130, 100, 115);

//lines connecting anchor points to control handles
strokeWeight(1);
line(50, 50, 92, 15);  line(134, 15, 175, 50);
line(175, 50, 215, 92);  line(215, 134, 175, 175);
line(175, 175, 135, 205);  line(105, 205, 75, 175);
line(75, 175, 50, 145);  line(50, 105, 75, 75);
line(75, 75, 100, 54);  line(125, 54, 150, 75);
line(150, 75, 175, 100);  line(175, 125, 150, 150);
line(150, 150, 134, 160);  line(118, 160, 100, 150);
line(100, 150, 92, 140);  line(92, 130, 100, 115);

//control handles
fill(255);
ellipse(92, 15, 8, 8);  ellipse(134, 15, 8, 8);
ellipse(215, 92, 8, 8);  ellipse(215, 134, 8, 8);
ellipse(135, 205, 8, 8);  ellipse(105, 205, 8, 8);
ellipse(50, 145, 8, 8);  ellipse(50, 105, 8, 8);
ellipse(100, 54, 8, 8);  ellipse(125, 54, 8, 8);
ellipse(175, 100, 8, 8);  ellipse(175, 125, 8, 8);
ellipse(134, 160, 8, 8);  ellipse(118, 160, 8, 8);
ellipse(92, 140, 8, 8);  ellipse(92, 130, 8, 8);

//bezierVertex() - closed and no fill
strokeWeight(2);
int x = 200;
noFill();
beginShape();
vertex(50+x, 50);
bezierVertex(92+x, 15, 134+x, 15, 175+x, 50);
bezierVertex(215+x, 92, 215+x, 134, 175+x, 175);
bezierVertex(135+x, 205, 105+x, 205, 75+x, 175);
bezierVertex(50+x, 145, 50+x, 105, 75+x, 75);
bezierVertex(100+x, 54, 125+x, 54, 150+x, 75);
bezierVertex(175+x, 100, 175+x, 125, 150+x, 150);
bezierVertex(134+x, 160, 118+x, 160, 100+x, 150);
bezierVertex(92+x, 140, 92+x, 130, 100+x, 115);
endShape(CLOSE);

//lines connecting anchor points to control handles
strokeWeight(1);
stroke(0);
line(50+x, 50, 92+x, 15);  line(134+x, 15, 175+x, 50);
line(175+x, 50, 215+x, 92);  line(215+x, 134, 175+x, 175);
line(175+x, 175, 135+x, 205);  line(105+x, 205, 75+x, 175);
line(75+x, 175, 50+x, 145);  line(50+x, 105, 75+x, 75);
line(75+x, 75, 100+x, 54);  line(125+x, 54, 150+x, 75);
line(150+x, 75, 175+x, 100);  line(175+x, 125, 150+x, 150);
line(150+x, 150, 134+x, 160);  line(118+x, 160, 100+x, 150);
line(100+x, 150, 92+x, 140);  line(92+x, 130, 100+x, 115);

//control handles
fill(255);
ellipse(92+x, 15, 8, 8);  ellipse(134+x, 15, 8, 8);
ellipse(215+x, 92, 8, 8);  ellipse(215+x, 134, 8, 8);
ellipse(135+x, 205, 8, 8);  ellipse(105+x, 205, 8, 8);
ellipse(50+x, 145, 8, 8);  ellipse(50+x, 105, 8, 8);
ellipse(100+x, 54, 8, 8);  ellipse(125+x, 54, 8, 8);
ellipse(175+x, 100, 8, 8);  ellipse(175+x, 125, 8, 8);
ellipse(134+x, 160, 8, 8);  ellipse(118+x, 160, 8, 8);
ellipse(92+x, 140, 8, 8);  ellipse(92+x, 130, 8, 8);

//bezierVertex() - open and filled
strokeWeight(2);
x = 400;
fill(127);
beginShape();
vertex(50+x, 50);
bezierVertex(92+x, 15, 134+x, 15, 175+x, 50);
bezierVertex(215+x, 92, 215+x, 134, 175+x, 175);
bezierVertex(135+x, 205, 105+x, 205, 75+x, 175);
bezierVertex(50+x, 145, 50+x, 105, 75+x, 75);
bezierVertex(100+x, 54, 125+x, 54, 150+x, 75);
bezierVertex(175+x, 100, 175+x, 125, 150+x, 150);
bezierVertex(134+x, 160, 118+x, 160, 100+x, 150);
bezierVertex(92+x, 140, 92+x, 130, 100+x, 115);
endShape();

//lines connecting anchor points to control handles
strokeWeight(1);
stroke(0);
line(50+x, 50, 92+x, 15);  line(134+x, 15, 175+x, 50);
line(175+x, 50, 215+x, 92);  line(215+x, 134, 175+x, 175);
line(175+x, 175, 135+x, 205);  line(105+x, 205, 75+x, 175);
line(75+x, 175, 50+x, 145);  line(50+x, 105, 75+x, 75);
line(75+x, 75, 100+x, 54);  line(125+x, 54, 150+x, 75);
line(150+x, 75, 175+x, 100);  line(175+x, 125, 150+x, 150);
line(150+x, 150, 134+x, 160);  line(118+x, 160, 100+x, 150);
line(100+x, 150, 92+x, 140);  line(92+x, 130, 100+x, 115);

//control handles
fill(255);
ellipse(92+x, 15, 8, 8);  ellipse(134+x, 15, 8, 8);
ellipse(215+x, 92, 8, 8);  ellipse(215+x, 134, 8, 8);
ellipse(135+x, 205, 8, 8);  ellipse(105+x, 205, 8, 8);
ellipse(50+x, 145, 8, 8);  ellipse(50+x, 105, 8, 8);
ellipse(100+x, 54, 8, 8);  ellipse(125+x, 54, 8, 8);
ellipse(175+x, 100, 8, 8);  ellipse(175+x, 125, 8, 8);
ellipse(134+x, 160, 8, 8);  ellipse(118+x, 160, 8, 8);
ellipse(92+x, 140, 8, 8);  ellipse(92+x, 130, 8, 8);


