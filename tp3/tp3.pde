//Cardamon Gomez 
// https://www.youtube.com/watch?v=GjIr6yDlVBA

PImage img;
float cant;
float tam;
float angulo; 
int estado; 

void setup() {
  img = loadImage("doce.jpg");
  size(800, 400);
}

void draw() {
  background(255);
  //imagen en la izquierda
  image(img, 0, 0, width/2, height);
  
  dibujarCirculos(width/2, 394);
//uso de condicionales
  if (estado == 1) {
    float tamañoCalculado = calcularTamañoDinamico(mouseY, 50, 250);
    dibujarCuadradoGiratorio(tamañoCalculado); 
  } else {
    angulo = 0; 
  }
}

//evento mouse 
void mouseClicked() {
  if (estado == 0) {
    estado = 1; 
  } else {
    //reinicio
    estado = 0; 
  }
}
