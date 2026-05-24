float estado;
PFont miTipografia;

void setup() {
  size (640, 480);
  miTipografia= loadFont ("Bahnschrift-48.vlw");
  valoresDeVariablesPantallaInicio();
  valoresDeVariablesPantallaUno();
  valoresDeVariablesPantallaDos();
  valoresDeVariablesPantallaTres();
}
void draw () {
  if ( estado==0 ) {
    dibujarPantallaInicio();
  } else if ( estado==1 ) {
    dibujarPantallaUno();
  } else if (estado==2) {
    dibujarPantallaDos();
  } else if (estado==3) {
    dibujarPantallaTres();
  }
}
void mouseClicked() {
  println (mouseX, mouseY);

  if ( estado==0 ) {
    if ( mouseSobreBoton() ) {
      estado = 1;
    }
  } else if (estado==1) {
    botonAdelanteAtras();
    if (mouseSobreBotonSiguiente()) {
      estado=2;
    }
  } else if (estado==2 ) {
    if (mouseSobreBotonSiguiente()) {
      estado=3;
    }
  } else if ( estado==3) {
    if (mouseSobreBotonSiguiente()) {
      estado=0;
      
    }
  }
}
