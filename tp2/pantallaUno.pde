String txClusterA;
int txClusterAX;
int txClusterAY;
int tamTxClusterAX;
int tamTxClusterAY;

float contadorClusterA=0;
int cambio =4 ;
int estadoClusterA = 0;
int tiempoEspera = 0;
int duracionEspera = 10000;

float posImagenX=50;
float posImagenY;
float tamImagenX;
float tamImagenY;

PImage imgClusterAUno;
PImage imgClusterADos;
PImage imgClusterATres;

int contadorClusterADos;

float posImagenDosX = 641;
float tiempoEsperaDos= 0;

float posImagenTresX = 641;
float tiempoEsperaTres= 0;

float contadorClusterATres=255;

int botonSiguienteX;
int botonSiguienteY;
int tamBotonSiguienteX;
int tamBotonSiguienteY;

boolean mouseSobreBotonSiguiente() {
  boolean mouseSobreBotonSiguiente=  mouseX >= botonSiguienteX && mouseX <= botonSiguienteX + tamBotonSiguienteX &&
    mouseY >= botonSiguienteY && mouseY <= botonSiguienteY + tamBotonSiguienteY;
  return mouseSobreBotonSiguiente;
}
float contadorClusterCuatro=0;

float tiempoEsperaCuatro=0;

int btnAtrasX = 30;
int btnAtrasY = 220;
int btnAtrasAncho = 20;
int btnAtrasAlto = 40;


int btnAdelanteX = 610;
int btnAdelanteY = 220;
int btnAdelanteAncho = 20;
int btnAdelanteAlto = 40;


boolean mouseSobreBtnAtras() {
  boolean mouseSobreBtnAtras= mouseX >= btnAtrasX && mouseX <= btnAtrasX + btnAtrasAncho &&
    mouseY >= btnAtrasY && mouseY <= btnAtrasY + btnAtrasAlto;
  return mouseSobreBtnAtras;
}

boolean mouseSobreBtnAdelante() {
  boolean mouseSobreBtnAdelante= mouseX >= btnAdelanteX && mouseX <= btnAdelanteX + btnAdelanteAncho &&
    mouseY >= btnAdelanteY && mouseY <= btnAdelanteY + btnAdelanteAlto;
  return mouseSobreBtnAdelante;
}

float destinoX1;
float destinoX2;
float destinoX3;


void valoresDeVariablesPantallaUno() {
  botonSiguienteX= 515;
  botonSiguienteY=415;
  tamBotonSiguienteX = 105;
  tamBotonSiguienteY= 45;


  txClusterA = "CLUSTER A\n \n Una obra en un acto: encerrados en una armadura mecánica, los personajes reciben instrucciones de recrear variaciones de una escena fragmentada. Aunque se les sugiere diálogo, no deben pronunciar palabra alguna. La interacción solo se insinúa para generar tensión, pero no lo suficiente como para evocar la incómoda perspectiva de la intimidad.";
  txClusterAX= width/12;
  txClusterAY=height/8;
  tamTxClusterAX=530;
  tamTxClusterAY=400;

  imgClusterAUno= loadImage ("data/imgClusterAUno.jpeg") ;
  imgClusterADos= loadImage ("imgClusterADos.jpeg");
  imgClusterATres= loadImage("imgClusterATres.jpeg");


  posImagenY=50;
  tamImagenX= 540;
  tamImagenY= 380;
}




void dibujarPantallaUno() {
  background(contadorClusterATres, contadorClusterATres, contadorClusterATres);
  if (estadoClusterA == 0) {
    contadorClusterA += cambio;
    if (contadorClusterA >= 255) {
      contadorClusterA = 255;
      estadoClusterA = 1;
      tiempoEspera = millis();
    }
  } else if (estadoClusterA == 1) {
    if (millis() - tiempoEspera >= duracionEspera) {
      estadoClusterA = 2;
    }
  } else if (estadoClusterA == 2) {
    estadoClusterA = 2;
    contadorClusterA -= cambio;
    if (contadorClusterA <= 0) {
      contadorClusterA = 0;
      estadoClusterA = 3;
    }
  }

  fill(255, 0, 0, contadorClusterA);
  textAlign (CENTER);
  text(txClusterA, txClusterAX, txClusterAY, tamTxClusterAX, tamTxClusterAY);




  if (estadoClusterA >= 3 && estadoClusterA <= 5|| estadoClusterA == 21) {
    tint(255, contadorClusterADos);
    image (imgClusterAUno, posImagenX, posImagenY, tamImagenX, tamImagenY);
    //boton adelante
    stroke(150, 150, 150, contadorClusterADos);
    strokeWeight (3);
    line(btnAdelanteX, btnAdelanteY, btnAdelanteX+ btnAdelanteAncho, height/2);
    line(btnAdelanteX, btnAdelanteY+ btnAdelanteAlto, btnAdelanteX+ btnAdelanteAncho, height/2);
  }
  if (estadoClusterA >= 5 && estadoClusterA <= 8|| estadoClusterA == 20 || estadoClusterA == 31) {
    tint(255, contadorClusterADos);
    image(imgClusterADos, posImagenDosX, posImagenY, tamImagenX, tamImagenY);
    //boton adelante
    stroke(150, 150, 150, contadorClusterADos);
    strokeWeight (3);
    line(btnAdelanteX, btnAdelanteY, btnAdelanteX+ btnAdelanteAncho, height/2);
    line(btnAdelanteX, btnAdelanteY+ btnAdelanteAlto, btnAdelanteX+ btnAdelanteAncho, height/2);
    //boton Atras
    stroke(150, 150, 150, contadorClusterADos);
    strokeWeight (3);
    line(btnAtrasX, btnAtrasY, btnAtrasX- btnAtrasAncho, height/2);
    line(btnAtrasX, btnAtrasY+ btnAtrasAlto, btnAtrasX- btnAtrasAncho, height/2);
  }
  if (estadoClusterA >= 8 && estadoClusterA <= 12|| estadoClusterA == 30) {
    tint(255, contadorClusterADos);
    image(imgClusterATres, posImagenTresX, posImagenY, tamImagenX, tamImagenY);
    //boton Atras
    stroke(150, 150, 150, contadorClusterADos);
    strokeWeight (3);
    line(btnAtrasX, btnAtrasY, btnAtrasX- btnAtrasAncho, height/2);
    line(btnAtrasX, btnAtrasY+ btnAtrasAlto, btnAtrasX- btnAtrasAncho, height/2);
  }
  if (estadoClusterA >= 11) {
    fill(255, 255, 255, contadorClusterCuatro);
    stroke (8, 35, 201, contadorClusterCuatro);
    rect (botonSiguienteX, botonSiguienteY, tamBotonSiguienteX, tamBotonSiguienteY);
    fill(8, 35, 201, contadorClusterCuatro);
    textSize(15);
    text("CLUSTER B -->", botonSiguienteX, 435, tamBotonSiguienteX, tamBotonSiguienteY);
  }

  if (estadoClusterA==3) {
    contadorClusterADos += cambio;
    if (contadorClusterADos >= 255) {
      contadorClusterADos = 255;
      estadoClusterA = 4;
      tiempoEspera = millis();
    }
  } else if (estadoClusterA == 4) {
    if (millis() - tiempoEspera >= duracionEspera) {
      estadoClusterA = 5;
    }
  } else if (estadoClusterA == 5) {
    if (posImagenX > -tamImagenX) {
      posImagenX = posImagenX - 20;
    } else {
      estadoClusterA = 6;
    }
  } else if (estadoClusterA == 6) {

    if (posImagenDosX > 50) {
      posImagenDosX -= 20;
    } else {
      estadoClusterA = 7;
      tiempoEsperaDos = millis();
    }
  } else if (estadoClusterA == 7) {
    if (millis() - tiempoEsperaDos >= duracionEspera) {
      estadoClusterA = 8;
    }
  } else if (estadoClusterA == 8) {

    if (posImagenDosX > -tamImagenX) {
      posImagenDosX -= 20;
    } else {
      estadoClusterA = 9;
    }
  } else if (estadoClusterA == 9) {

    if (posImagenTresX > 50) {
      posImagenTresX -= 20;
      contadorClusterATres -=10;
    } else {
      estadoClusterA = 10;
      tiempoEsperaTres = millis();
    }
  } else if (estadoClusterA == 10) {
    if (millis() - tiempoEsperaTres >= duracionEspera) {
      estadoClusterA = 11;
    }
  }
  //
  else if (estadoClusterA == 20) {
    if (posImagenDosX < 641) {
      posImagenDosX += 20;
    } else {
      posImagenDosX = 641;
      posImagenX = -tamImagenX;
      estadoClusterA = 21;
    }
  } else if (estadoClusterA == 21) {
    if (posImagenX < 50) {
      posImagenX += 20;
    } else {
      posImagenX = 50;
      estadoClusterA = 4;
      tiempoEspera = millis();
    }
  } else if (estadoClusterA == 30) {
    if (posImagenTresX < 641) {
      posImagenTresX += 20;
    } else {
      posImagenTresX = 641;
      posImagenDosX = -tamImagenX;
      estadoClusterA = 31;
    }
  } else if (estadoClusterA == 31) {
    if (contadorClusterATres < 255) {
      contadorClusterATres += 20;
      if (contadorClusterATres > 255) {
        contadorClusterATres = 255;
      }
    }
    if (posImagenDosX < 50) {
      posImagenDosX += 20;
    } else {
      posImagenDosX = 50;
      estadoClusterA = 7;
      tiempoEsperaDos = millis();
    }
  }
  //
  else if (estadoClusterA == 11) {
    contadorClusterCuatro+=cambio;
    if (contadorClusterCuatro >= 255) {
      estadoClusterA = 12;
      tiempoEsperaCuatro = millis();
    }
  } else if (estadoClusterA== 12) {
    if
      (millis() - tiempoEsperaCuatro >= duracionEspera) {
      estadoClusterA=13;
      estado=2;
    }
  }
}

void botonAdelanteAtras() {
  if (mouseSobreBtnAdelante()) {
    if (estadoClusterA == 4) {
      estadoClusterA = 5;
    } else if (estadoClusterA == 7) {
      estadoClusterA = 8;
    }
  }

  if (mouseSobreBtnAtras()) {
    if (estadoClusterA == 7) {
      estadoClusterA = 20;
    } else if (estadoClusterA == 10) {
      estadoClusterA = 30;
    }
  }
}
