//Cardamon Gomez. Introduccion a la programacion para medios interactivos. Comision 3

PImage miMural;
void setup() {
  size (800, 400);
  miMural = loadImage("data/muralMon.jpeg");
}
void draw() {
  background(93, 48, 48);
  //cielo
  fill(104, 199, 245);
  noStroke();
  beginShape();
  vertex(402, 325);
  vertex(418, 223);
  vertex(408, 215);
  vertex(434, 173);
  vertex(422, 131);
  vertex(400, 113);
  vertex(440, 63);
  vertex(424, 33);
  vertex(472, 43);
  vertex(496, 25);
  vertex(520, 41);
  vertex(594, 41);
  vertex(646, 43);
  endShape();
  //nubes
  fill(255, 255, 255);
  stroke(255, 255, 255);
  strokeWeight(5);
  triangle (464, 71, 522, 69, 500, 49);
  triangle (541, 67, 521, 85, 569, 85);
  triangle(433, 81, 417, 99, 449, 99);
  triangle(449, 115, 479, 97, 539, 115);
  triangle (545, 143, 577, 121, 609, 151);
  triangle (491, 166, 539, 164, 525, 148);
  triangle(477, 192, 445, 218, 499, 218);
  //forma blanca
  quad(644, 5, 623, 24, 763, 126, 750, 68);
  //forma turquesa
  fill(22, 110, 121);
  beginShape();
  noStroke();
  vertex(399, 328);
  vertex(780, 335);
  vertex(790, 271);
  vertex(768, 235);
  vertex(772, 131);
  vertex(710, 59);
  vertex(622, 23);
  vertex(598, 33);
  vertex(572, 67);
  vertex(594, 71);
  vertex(538, 89);
  vertex(558, 97);
  vertex(566, 105);
  vertex(399, 328);
  endShape();
  //forma negra
  fill(0, 0, 0);
  quad(607, 65, 637, 41, 687, 65, 631, 95);
  quad(410, 328, 550, 248, 734, 218, 766, 334);
  //forma roja
  fill(224, 52, 52);
  beginShape();
  vertex(690, 59);
  vertex(642, 73);
  vertex(606, 105);
  vertex(610, 135);
  vertex(518, 273);
  vertex(497, 298);
  vertex(754, 328);
  vertex(792, 308);
  vertex(740, 285);
  vertex(754, 269);
  vertex(710, 77);
  endShape();
  //casa fondo
  fill(255, 214, 219);
  beginShape();
  vertex(581, 258);
  vertex(605, 125);
  quadraticVertex(619, 103, 639, 115);
  quadraticVertex(647, 119, 661, 97);
  quadraticVertex(668, 81, 701, 93);
  quadraticVertex(731, 103, 739, 135);
  vertex(745, 255);
  vertex(581, 258);
  endShape();
  //casa linea
  stroke(234, 109, 124);
  strokeWeight(5);
  circle(625, 140, 32);
  rect(609, 144, 32, 100);
  circle(625, 182, 20);
  square(643, 143, 77);
  quad(643, 143, 720, 143, 696, 107, 674, 99);
  quad(665, 159, 691, 151, 695, 181, 671, 206);
  textSize(18);
  text("¿donde esta mi casa?", 599, 272);
  //figuras humanas
  fill(255, 255, 255);
  stroke(255, 255, 255);
  strokeWeight(3);
  circle(579, 211, 26);
  circle(511, 217, 27);
  circle(551, 245, 20);
  ellipse(581, 245, 37, 60);
  rect(564, 252, 33, 46);
  quad(543, 250, 563, 252, 557, 298, 533, 298);
  ellipse(511, 260, 32, 80);
  square(495, 270, 30);
  strokeWeight(10);
  line(517, 232, 545, 272);

  //imagen
  image (miMural, 0, 0, 400, 400);
}
