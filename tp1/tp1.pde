PImage P;

void setup(){
  size(800,400);
 background(255);
  P = loadImage("bobsponja.jpg");
}

void draw(){
  image(P, 0,0,300,400);
 
 //Fondo
  fill(36,209,199);
  noStroke();
  rect(380,0,320,400);
 noStroke();
 
 
 //brazos
 stroke(244,252,8);
 strokeWeight(8);
 
 line(656,209,664,282);
 line(425,209,415,284);
 
 
  stroke(0,0,0);
 strokeWeight(2);
 
 line(650,209,660,282);
 line(660,209,669,282);
 
 line(429,209,418,284);
 line(422,209,410,284);
 
 
 //Hombros
 fill(255);
 stroke(0,0,0);
 strokeWeight(3);
 triangle(646,164,671,206,640,216);
 triangle(435,164,443,216,411,206);
 
 
  //Manos
 stroke(0,0,0);
 strokeWeight(1.5);
 fill(244,252,8);
 ellipse(665,290,25,25);
 ellipse(413,288,25,25);
 
bezier(656.0,284.0,626.0,304.0,641.0,309.0,656.0,297.0);
bezier(655.0,294.0,649.0,338.0,663.0,332.0,666.0,295.0);
bezier(665.0,298.0,668.0,340.0,683.0,350.0,675.0,289.0);
bezier(671.0,297.0,687.0,310.0,715.0,312.0,671.0,283.0);


bezier(404.0,282.0,386.0,291.0,369.0,319.0,413.0,288.0);
bezier(405.0,291.0,389.0,312.0,377.0,347.0,422.0,280.0);
bezier(413.0,298.0,398.0,322.0,417.0,350.0,421.0,285.0);
bezier(417.0,291.0,420.0,311.0,448.0,319.0,419.0,279.0);

noStroke();
ellipse(665,290,20,20);
 ellipse(413,288,20,20);


 
  //Cabeza
  fill(244,252,8);
  stroke(147,191,39);
  strokeWeight(6);
  quad(420,12,670,12,640,221,440,221);  

  //Ojos
  fill(255);
  stroke(0,0,0);
  strokeWeight(3);
  ellipse(505,90,75,75);
  ellipse(580,90,75,75);
  
 //pupilas
  fill(26,232,189);
  ellipse(515,90,30,30);
  ellipse(570,90,30,30);
  fill(5,5,5);
  ellipse(515,90,15,15);
  ellipse(570,90,15,15);
  
  
  //pantalon
  fill(255);
  strokeWeight(2);
  rect(440,223,200,25);
  fill(139,69,19);
  rect(440,249,200,35);
  
  fill(277,57,23);
  stroke(0,0,0);
  quad(525, 223, 555, 223, 546, 244, 535, 244);
  
  fill(255);
  triangle(520, 245,483, 224,533, 224);
  triangle(571, 242,545, 224,600, 224);
  stroke(147,191,39);       
  strokeWeight(6); 
  line(441, 225, 639, 225);
        
  stroke(0,0,0);
  fill(0,0,0);
  rect(460, 260, 27, 2);
  rect(510, 260, 65, 2);
  rect(600, 260, 27, 2);
  
  fill(139,69,19);
  stroke(0,0,0);
  strokeWeight(2);
  rect(475,285,40,15);
  rect(570,285,40,15);
  
  
  // Zapatos 
  fill(3,3,3);
  noStroke();
  ellipse(591,363,30,10);
  ellipse(495,363,30,10);
  
  ellipse(591,369,31,20);
  ellipse(495,369,31,20);
  
  rect(494,371,13,15);
  rect(579,371,13,15);
  ellipse(605,373,35,25);
  ellipse(481,372,35,25);
  
  fill(255);
  noStroke();
  ellipse(478,370,5,10);
  ellipse(610,372,5,10);
 
  
  //Pienas
  stroke(0,0,0);
  fill(244,252,8);
  rect(489,300,11,65);
  rect(585,300,11,65);
  
  fill(255);
  rect(489,320,11,45);
  rect(585,320,11,45);
  
  stroke(23,150,227);
  strokeWeight(2);
  line(489,328,499,328);
  line(585,328,595,328);
  
  stroke(227,57,23);
  strokeWeight(2);
  line(489,336,499,336);
  line(585,336,595,336);
  
  //corbata
  fill(227,57,23);
  stroke(0,0,0);
  quad(540,244,551,263,540,280,529, 267);
  quad(534,244,547,244,550,261,530,266);
  stroke(227,57,23);
  strokeWeight(3);
  line(532,266,548,261);
  
  //Pestañas
  stroke(0,0,0);
  strokeWeight(6);
 line(503, 40, 503, 50);
 line(479, 45, 485, 55);
 line(527, 45, 522, 55);
    
 line(580, 40, 580, 50);
 line(557,45,562,55);
 line(605,45,600,55);
 
 //agujeros de su cara 
 stroke(147,191,39);
 fill(147,191,39);
 ellipse(449,95,10,15);
 ellipse(459,176,5,10);
 ellipse(483,192,15,25);
 ellipse(599,205,10,5);
 ellipse(621,169,20,25);
 ellipse(638,40,5,10);
 ellipse(450,53,20,30);

 
 //boca
 fill(85,15,15);
 stroke(0);
 strokeWeight(3);
bezier(478.0,135.0,473.0,197.0,587.0,228.0,607.0,135.0);

 fill(244,252,8);
 stroke(0);
 bezier(478.0,135.0,486.0,155.0,587.0,158.0,607.0,135.0);
 
  //Dientes
 stroke(0,0,0);
  strokeWeight(2);
 fill(255);
 quad(517,149,537,150,536,169,515,168);
 quad(546,150,566,149,568,166,549,169);
 
  //Lengua
 fill(201,99,99);
 stroke(201,99,99);
 ellipse(530,194,36,25);
 ellipse(555,194,36,25);
 
   //cunviera de la lengua
 fill(244,252,8);
 stroke(244,252,8);
 ellipse(515,197,30,10);
 ellipse(523,201,20,10);
 ellipse(534,204,80,10);
 ellipse(564,199,20,10);
 ellipse(572,198,10,10);
 ellipse(553,198,3,3);
 ellipse(573,194,6,6); 
 ellipse(538,199,14,5);
 ellipse(548,198,5,5);
 
 noFill();
  stroke(0,0,0);
 strokeWeight(3);
bezier(478.0,135.0,473.0,197.0,587.0,228.0,607.0,135.0);
 bezier(478.0,135.0,486.0,155.0,587.0,158.0,607.0,135.0);
 
 
 
 //Mejillas
 fill(244,252,8);
 stroke(211,19,19);
 strokeWeight(2);
bezier(466.0,137.0,444.0,111.0,503.0,99.0,493.0,132.0);
bezier(596.0,125.0,590.0,94.0,646.0,105.0,626.0,133.0);

strokeWeight(3.5);
point(470,122);
point(482,116);
point(477,126);

point(610,113);
point(623,117);
point(611,122);

stroke(0,0,0);
strokeWeight(2.5);
 line(604,129,612,140);
 line(483,130,473,141);


 //Nariz 
 
 fill(244,252,8);
 stroke(0,0,0);
 strokeWeight(3);
 ellipse(541,115,25,35);
 stroke(244,252,8);
 ellipse(534,131,30,15);
 
}
