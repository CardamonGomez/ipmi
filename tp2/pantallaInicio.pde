// variables para textoInicial
String textoInicial;
int txInicialX ;
int txInicialY;
int tamTxInicialX;
int tamTxInicialY;
//variables para titulo
String titulo;
int tituloX;
int tituloY;
//variables para autor
String autor;
int autorX;
int autorY;
//variables para boton que sube
int botonX ;
int botonY ;
int botonAncho;
int botonAlto;
//variables para el boton cuando pasas el mouse por arriba (beginShape)
int vUnoX;
int vUnoY;
int vDosX;
int vDosY;
int vTresX;
int vTresY;
int vCuatroX;
int vCuatroY;
// variables para triangulos y beginContour
int verticeUnoX;
int verticeUnoY;
int verticeDosX;
int verticeDosY;
int verticeTresX;
int verticeTresY;
//contadores
int contador;
int contadorDos;
int contadorTres;
//imagen de fondo
PImage fondo;

//EN CORTO
void valoresDeVariablesPantallaInicio() {
  fondo = loadImage("imgPlay.jpg");
  textoInicialValor();
  tituloValor();
  autorValor();
  botonValor();
  beginRectanguloValor();
  beginContourTrainaguloValor();
}

void dibujarPantallaInicio() {
  dibujos(); //(titulo,autor,texto y fondo)
  movTitulo(); //mov=movimiento
  movAutor();
  movTxInicialBoton();
   noStroke();
  cambioColorBoton (); // cambio de color del boton cuando el mouse pasa por arriba
  rect(botonX, botonY, botonAncho, botonAlto); //boton que sube
  dibujarPlayNegro(); // el triangulo negro que aparece al final en el boton
}
//
//
//EN LARGO
//VALORES de variables para el setup
void textoInicialValor() {
  textoInicial="El afán de superar a la humanidad nos ha brindado una serie de espacios donde la voluntad no desempeña un papel significativo, la comunicación se controla y las funciones corporales se activan según la demanda del sistema.\n La naturaleza humana nunca se ignora, sino que se comprende y se utiliza para superarse a sí misma.";
  txInicialX = 110;
  txInicialY= 250;
  tamTxInicialX= 450;
  tamTxInicialY= 300;
}
void tituloValor(){
  titulo="CIRCADIAN RHYTHM";
  tituloX=width/6;
  tituloY=80;
}
void autorValor() {
  autor= "Frederik Heyman";
  autorX= width/3;
  autorY=120;
}
void botonValor() {
  botonX = 216;
  botonY = 400;
  botonAncho = 200;
  botonAlto = 70;
}
void beginRectanguloValor() {
  vUnoX= 216;
  vUnoY=370;
  vDosX=416;
  vDosY=370;
  vTresX=416;
  vTresY=440;
  vCuatroX=216;
  vCuatroY=440;
}
void beginContourTrainaguloValor() {
  verticeUnoX=300;
  verticeUnoY= 380;
  verticeDosX=300;
  verticeDosY= 420;
  verticeTresX= 350;
  verticeTresY= 400;
}

//DIBUJOS para el draw
void dibujarFondo() {
  image (fondo, 0, 0, width, height);
  filter(BLUR, 1.5);
}
void dibujarTitulo() {
  textFont(miTipografia);
  fill (255, 0, 0, contador);
  text (titulo, tituloX, tituloY);
}
void dibujarAutor() {
  textSize(28);
  text (autor, autorX, autorY);
}
void dibujarTextoInicial() {
  push();
  textAlign (CENTER);
  textSize (19);
  text (textoInicial, txInicialX, txInicialY, tamTxInicialX, tamTxInicialY );
  pop();
}
void dibujos() {
  dibujarFondo();
  dibujarTitulo();
  dibujarAutor();
  dibujarTextoInicial();
}

//CONDICIONALES
//if
boolean posInicialTitulo() {
  boolean posInicialTitulo= tituloY < height/4;
  return posInicialTitulo;
}
void tituloBaja() {
  tituloY++;
  contador= contador +1 *7;
}
//else if
boolean posFinalTitulo() {
  boolean posFinalTitulo= tituloY <height/4-1 ;
  return posFinalTitulo;
}
void tituloSube() {
  tituloY--;
}
//condicional
void movTitulo() {
  if ( posInicialTitulo() ) {
    tituloBaja();
  } else
    if (posFinalTitulo()) {
      tituloSube();
    }
}
//if
boolean posInicialAutor() {
  boolean posInicialAutor=  autorY < height/3;
  return posInicialAutor;
}
void autorBaja() {
  autorY++;
  contador= contador +1 *7;
}
// else if
boolean posFinalAutor() {
  boolean posFinalAutor=  autorY < height/3-1;
  return posFinalAutor;
}
void autorSube() {
  autorY--;
}
//completo
void movAutor() {
  if ( posInicialAutor() ) {
    autorBaja();
  } else
    if (posFinalAutor()) {
      autorSube();
    }
}

//if
boolean posInicialTxInicial() {
  boolean posInicialTxInicial=  txInicialY > 194;
  return posInicialTxInicial;
}
void txInicialSube() {
  txInicialY--;
}
//else if
boolean posFinalTxInicial() {
  boolean posFinalTxInicial=  txInicialY >195;
  return posFinalTxInicial;
}
void txInicialBaja() {
  txInicialY++;
}
//else if
boolean posInicialBoton() {
  boolean posInicialBoton=  botonY > 370;
  return posInicialBoton;
}
void botonSubeContadorDosInicia() {
  botonY--;
  contadorDos= contadorDos +1 *8;
}
//else if
boolean posFinalBoton() {
  boolean posFinalBoton= botonY > 371;
  return posFinalBoton;
}
void botonBaja() {
  botonY++;
}
//condicional
void movTxInicialBoton() {
  if ( posInicialTxInicial()) {
    txInicialSube();
  } else
    if (posFinalTxInicial() ) {
      txInicialBaja();
    } else if ( posInicialBoton ()) {
      botonSubeContadorDosInicia();
    } else
      if (posFinalBoton() ) {
        botonBaja();
      }
}
//if
boolean mouseSobreBoton() {
  boolean mouseSobreBoton=  contadorDos>=240 && mouseX >= botonX && mouseX <= botonX + botonAncho &&
    mouseY >= 370 && mouseY <= 370 + botonAlto;
  return mouseSobreBoton;
}
void dibujoBoton() {
  fill(255, 0, 0, contadorDos);
  triangle(verticeUnoX, verticeUnoY, verticeDosX, verticeDosY, verticeTresX, verticeTresY);

  fill(0, 0, 0);
  beginShape ();
  vertex(vUnoX, vUnoY);
  vertex (vDosX, vDosY);
  vertex (vTresX, vTresY);
  vertex (vCuatroX, vCuatroY);
  beginContour();
  vertex(verticeUnoX, verticeUnoY);
  vertex(verticeDosX, verticeDosY);
  vertex( verticeTresX, verticeTresY);
  endContour();
  endShape();
}
//else
void siNoRellenarRojo() {
  fill(255, 0, 0, contadorDos);
}
//condicional
void cambioColorBoton () {
  if (mouseSobreBoton()) {
    dibujoBoton();
  } else {
    siNoRellenarRojo();
  }
}
//if
boolean contadorDosDosCuarenta() {
  boolean contadorDosDosCuarenta= contadorDos >= 240;
  return contadorDosDosCuarenta;
}
void dibujarPlay() {
  contadorTres =contadorTres +2*3;
  fill(0, 0, 0, contadorTres);
  triangle(verticeUnoX, verticeUnoY, verticeDosX, verticeDosY, verticeTresX, verticeTresY);
}
//condicional
void dibujarPlayNegro() {
  if (contadorDosDosCuarenta() ) {
    dibujarPlay();
  }
}
