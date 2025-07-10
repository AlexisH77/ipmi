//ALEXIS HURTADO LEGAJO 212733/0
//SE REINICIA CON LA TECLA "ENTER"
// https://youtu.be/YE1LqPEdUZk

PImage foto;

int columnas = 4;
int filas = 4;
int espacio = 2;
int tamaño;

int pox = 800;
int poy = 400;

boolean invertido = false;

void setup() {
  size(800, 400);
  foto = loadImage("18.jpg");
  tamaño = (poy - (columnas - 1) * espacio) / columnas;
}

void draw() {
  background(60);
  image(foto, 0, 0, poy, poy); 

  tamaño = (poy - (filas - 1) * espacio) / filas;

  
  dibujarGrilla(columnas, filas, espacio, tamaño, poy);
}


void dibujarGrilla(int cols, int fils, int esp, int tam, int inicioX) {
  for (int fila = 0; fila < fils; fila++) {
    for (int col = 0; col < cols; col++) {
      int x = inicioX + col * (tam + esp);
      int y = fila * (tam + esp);
      int tipo = (fila + col) % 2;

     
      dibujarBloque(x, y, tam, tipo, invertido);
    }
  }
}


void dibujarBloque(int x, int y, int tam, int tipo, boolean inv) {
  float anchoRaya = tam / 5.0;

  for (int i = 0; i < 5; i++) {
   
    if (inv) {
      if (i % 2 == 0) {
        fill(255);  
      } else {
        fill(0);    
      }
    } else {
      if (i % 2 == 0) {
        fill(0);    
      } else {
        fill(255); 
      }
    }

    if (tipo == 0) {
      rect(x + i * anchoRaya, y, anchoRaya, tam); 
    } else {
      rect(x, y + i * anchoRaya, tam, anchoRaya); 
    }
  }
}

void mousePressed() {
  invertido = !invertido;
  columnas++;
  filas++;
}

void keyPressed() {
  if (key == ENTER || key == RETURN) {
    columnas = 4;
    filas = 4;
    invertido = false;
  }
}
