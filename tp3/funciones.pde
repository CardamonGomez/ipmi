void dibujarCirculos(float origenX, float origenY) {
  pushMatrix();
  //uso del translate
  translate(origenX, origenY);
  float posY = 0;
  //ciclos for anidados
  for (int y = 0, cantidad = 2; y < 31; y++, cantidad++) {
    cant = cantidad * 3;
    tam = (width/2 - 10) / cant;
    float centroY = posY - (tam / 2);
    
    for (float x = 0; x < cant; x++) {
      fill(0);
      stroke(-1);
      circle(x * tam + tam/2, centroY, tam);
    }
    posY -= tam;
  }
  popMatrix();
}
// funcion propia que NO retorna valor
void dibujarCuadradoGiratorio(float tamañoActual) {
  angulo += 1.5; 
  pushMatrix();
  translate((width/4)*3, height/2);
  //uso de rotate
  rotate(radians(angulo));
  blendMode(DIFFERENCE);
  fill(255);
  noStroke();
  rectMode(CENTER);
  
  rect(0, 0, tamañoActual, tamañoActual);
  
  blendMode(BLEND);
  popMatrix();
}
//funcion propia que SI retorna un valor
float calcularTamañoDinamico(float posMouseY, float minTam, float maxTam) {
  //funcion matematica
  float resultado = map(posMouseY, 0, height, minTam, maxTam);
  return resultado;
}
