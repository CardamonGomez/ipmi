float contadorClusterC;
float cambioC = 4;
float estadoClusterC;
float contadorClusterDosC;
float tiempoEsperaC;
float duracionEsperaC = 10000;


String txClusterC;
float txClusterCX;
float txClusterCY;
float tamTxClusterCX;
float tamTxClusterCY;

PImage imgClusterCUno;
PImage imgClusterCDos;

float posImagenCUnoX = 50;
float posImagenCUnoY;
float tamImagenCUnoX;
float tamImagenCUnoY;

float posImagenCDosX = 641;
float tamImagenCDosX;
float tamImagenCDosY;

int contadorClusterCDos;
float tiempoEsperaDosC = 0;

float contadorClusterCuatroC = 0;


int btnAtrasCX = 30;
int btnAtrasCY = 220;
int btnAtrasAnchoC = 20;
int btnAtrasAltoC = 40;

int btnAdelanteCX = 610;
int btnAdelanteCY = 220;
int btnAdelanteAnchoC = 20;
int btnAdelanteAltoC = 40;


boolean mouseSobreBtnAtrasC() {
  boolean mouseSobreBtnAtrasC = mouseX >= btnAtrasCX && mouseX <= btnAtrasCX + btnAtrasAnchoC &&
    mouseY >= btnAtrasCY && mouseY <= btnAtrasCY + btnAtrasAltoC;
  return mouseSobreBtnAtrasC;
}

boolean mouseSobreBtnAdelanteC() {
  boolean mouseSobreBtnAdelanteC = mouseX >= btnAdelanteCX && mouseX <= btnAdelanteCX + btnAdelanteAnchoC &&
    mouseY >= btnAdelanteCY && mouseY <= btnAdelanteCY + btnAdelanteAltoC;
  return mouseSobreBtnAdelanteC;
}

void dibujarPantallaTres() {

  if (estadoClusterC < 5) {
    contadorClusterC += cambioC;
    background(contadorClusterC, contadorClusterC, contadorClusterC);
  } else {
    background(0);
  }

  drawPantallaTres();
}

void valoresDeVariablesPantallaTres() {
  txClusterC = "CLUSTER C\n \n Utiliza lo que tienes y sigue adelante. El tiempo, el agua y el espacio se pueden reciclar, ajustar y mejorar. Ante la ausencia de la naturaleza, debemos valorar todos los recipientes de materia orgánica como protectores de los elementos esenciales para la vida.";
  txClusterCX = width/12;
  txClusterCY = height/8;
  tamTxClusterCX = 530;
  tamTxClusterCY = 400;

  imgClusterCUno = loadImage("imgClusterCUno.png");
  posImagenCUnoY = 50;
  tamImagenCUnoX = 540;
  tamImagenCUnoY = 380;

  imgClusterCDos = loadImage("imgClusterCDos.png");
  tamImagenCDosX = 540;
  tamImagenCDosY = 380;
}

void drawPantallaTres() {

  if (estadoClusterC == 0) {
    contadorClusterDosC += cambioC;
    if (contadorClusterDosC >= 255) {
      contadorClusterDosC = 255;
      estadoClusterC = 1;
      tiempoEsperaC = millis();
    }
  } else if (estadoClusterC == 1) {
    if (millis() - tiempoEsperaC >= duracionEsperaC) {
      estadoClusterC = 2;
    }
  } else if (estadoClusterC == 2) {
    contadorClusterDosC -= cambioC;
    if (contadorClusterDosC <= 0) {
      contadorClusterDosC = 0;
      estadoClusterC = 3;
    }
  }


  fill(0, 0, 0, contadorClusterDosC);
  textSize(28);
  textAlign(CENTER);
  text(txClusterC, txClusterCX, txClusterCY, tamTxClusterCX, tamTxClusterCY);


  if (estadoClusterC >= 3 && estadoClusterC <= 5 || estadoClusterC == 21) {
    tint(255, contadorClusterCDos);
    image(imgClusterCUno, posImagenCUnoX, posImagenCUnoY, tamImagenCUnoX, tamImagenCUnoY);

    stroke(150, 150, 150, contadorClusterCDos);
    strokeWeight(3);
    line(btnAdelanteCX, btnAdelanteCY, btnAdelanteCX + btnAdelanteAnchoC, height/2);
    line(btnAdelanteCX, btnAdelanteCY + btnAdelanteAltoC, btnAdelanteCX + btnAdelanteAnchoC, height/2);
  }


  if (estadoClusterC >= 5 && estadoClusterC <= 8 || estadoClusterC == 20) {
    tint(255, contadorClusterCDos);
    image(imgClusterCDos, posImagenCDosX, posImagenCUnoY, tamImagenCDosX, tamImagenCDosY);

    stroke(150, 150, 150, contadorClusterCDos);
    strokeWeight(3);
    line(btnAtrasCX, btnAtrasCY, btnAtrasCX - btnAtrasAnchoC, height/2);
    line(btnAtrasCX, btnAtrasCY + btnAtrasAltoC, btnAtrasCX - btnAtrasAnchoC, height/2);
  }


  if (estadoClusterC >= 8) {
    fill(255, 255, 255, contadorClusterCuatroC);
    stroke(8, 35, 201, contadorClusterCuatroC);
    rect(botonSiguienteX, botonSiguienteY, tamBotonSiguienteX, tamBotonSiguienteY);
    fill(8, 35, 201, contadorClusterCuatroC);
    textSize(15);
    text("Reiniciar -->", botonSiguienteX, 435, tamBotonSiguienteX, tamBotonSiguienteY);
  }



  if (estadoClusterC == 3) {
    contadorClusterCDos += cambioC;
    if (contadorClusterCDos >= 255) {
      contadorClusterCDos = 255;
      estadoClusterC = 4;
      tiempoEsperaC = millis();
    }
  } else if (estadoClusterC == 4) {
    if (millis() - tiempoEsperaC >= duracionEsperaC) {
      estadoClusterC = 5;
    }
  } else if (estadoClusterC == 5) {

    if (posImagenCUnoX > -tamImagenCUnoX) {
      posImagenCUnoX = posImagenCUnoX - 20;
    } else {
      estadoClusterC = 6;
    }
  } else if (estadoClusterC == 6) {

    if (posImagenCDosX > 50) {
      posImagenCDosX -= 20;
    } else {
      estadoClusterC = 7;
      tiempoEsperaDosC = millis();
    }
  } else if (estadoClusterC == 7) {
    if (millis() - tiempoEsperaDosC >= duracionEsperaC) {
      estadoClusterC = 8;
    }
  } else if (estadoClusterC == 20) {
    if (posImagenCDosX < 641) {
      posImagenCDosX += 20;
    } else {
      posImagenCDosX = 641;
      posImagenCUnoX = -tamImagenCUnoX;
      estadoClusterC = 21;
    }
  } else if (estadoClusterC == 21) {
    if (posImagenCUnoX < 50) {
      posImagenCUnoX += 20;
    } else {
      posImagenCUnoX = 50;
      estadoClusterC = 4;
      tiempoEsperaC = millis();
    }
  } else if (estadoClusterC == 8) {
    contadorClusterCuatroC += cambioC;
    if (contadorClusterCuatroC >= 255) {
      contadorClusterCuatroC = 255;
      estadoClusterC = 9;
    }
  }
}

void botonAdelanteAtrasPantallaTres() {
  if (mouseSobreBtnAdelanteC()) {
    if (estadoClusterC == 4) {
      estadoClusterC = 5;
    }
  }

  if (mouseSobreBtnAtrasC()) {
    if (estadoClusterC == 7) {
      estadoClusterC = 20;
    }
  }
}
