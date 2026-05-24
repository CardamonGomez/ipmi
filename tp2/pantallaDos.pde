float contadorClusterB;
float contadorClusterBDos;
float contadorClusterBTres;
float contadorClusterBCuatro;

float estadoClusterB;
float cambioB =4 ;

float tiempoEsperaB;
int duracionEsperaB = 10000;

String txClusterB;
int txClusterBX;
int txClusterBY;
int tamTxClusterBX;
int tamTxClusterBY;

PImage imgClusterB;

float posImagenBX=150;
float posImagenBY=50;
float tamImagenBX=340;
float tamImagenBY=380;

float tiempoEsperaDosB;

void dibujarPantallaDos () {
  contadorClusterBDos += cambioB;
  background(contadorClusterBDos, contadorClusterBDos, contadorClusterBDos);
drawPantallaDos();
}
void valoresDeVariablesPantallaDos() {
  imgClusterB= loadImage("imgClusterB.jpg");

  txClusterB = "CLUSTER B\n \n El término «desastre» es estético, excesivamente sentimental y de alcance limitado. Ya sea a través del trabajo, el intelecto o la descomposición orgánica, los desastres simulados ofrecen una oportunidad de aprendizaje. Mientras se desvíe la memoria, la perpetuación está asegurada.";
  txClusterBX= width/12;
  txClusterBY=height/8;
  tamTxClusterBX=530;
  tamTxClusterBY=400;
}

void drawPantallaDos() {

  if (estadoClusterB == 0) {
    contadorClusterB += cambioB;
    if (contadorClusterB >= 255) {
      contadorClusterB = 255;
      estadoClusterB = 1;
      tiempoEsperaB = millis();
    }
  } else if (estadoClusterB == 1) {
    if (millis() - tiempoEsperaB >= duracionEsperaB) {
      estadoClusterB = 2;
    }
  } else if (estadoClusterB == 2) {
    contadorClusterB -= cambio;
    if (contadorClusterB <= 0) {
      contadorClusterB = 0;
      estadoClusterB = 3;
    }
  }

  fill(0, 0, 255, contadorClusterB);
  textSize(28);
  textAlign (CENTER);
  text(txClusterB, txClusterBX, txClusterBY, tamTxClusterBX, tamTxClusterBY);

  if (estadoClusterB >= 3 && estadoClusterB <= 6) {
    tint(255, contadorClusterBTres);
    image (imgClusterB, posImagenBX, posImagenBY, tamImagenBX, tamImagenBY);
  }

  if (estadoClusterB >= 5 && estadoClusterB <= 6) {
    fill(255, 255, 255, contadorClusterBCuatro);
    stroke (0, 0, 0, contadorClusterBCuatro);
    rect (botonSiguienteX, botonSiguienteY, tamBotonSiguienteX, tamBotonSiguienteY);
    fill(0, 0, 0, contadorClusterBCuatro);
    textSize(15);
    text("CLUSTER C -->", botonSiguienteX, 435, tamBotonSiguienteX, tamBotonSiguienteY);
  }

  if (estadoClusterB==3) {
    contadorClusterBTres += cambioB;
    if (contadorClusterBTres >= 255) {
      contadorClusterBTres = 255;
      estadoClusterB = 4;
      tiempoEsperaB = millis();
    }
  } else if (estadoClusterB == 4) {
    if (millis() - tiempoEsperaB >= duracionEsperaB) {
      estadoClusterB = 5;
    }
  } else if (estadoClusterB == 5) {
    contadorClusterBCuatro+=cambioB;
   if (contadorClusterBCuatro >= 255) {
      estadoClusterB = 6;
      tiempoEsperaDosB = millis();
    }
  } else if (estadoClusterB== 6) {
    if
      (millis() - tiempoEsperaDosB >= duracionEsperaB) {
      estadoClusterB=7;
      estado=3;
    }
  }
}
 
