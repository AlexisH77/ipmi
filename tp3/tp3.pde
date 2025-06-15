//VIDEO: https://youtu.be/HxumkBeqYWk
//Alexis Hurtado Legajo:122733/0
//Se reinica con la tecla ENTER

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

  for (int fila = 0; fila < filas; fila++) {
    for (int col = 0; col < columnas; col++) {
      int x = poy + col * (tamaño + espacio);
      int y = fila * (tamaño + espacio);

      int tipo = (fila + col) % 2;  

      for (int i = 0; i < 5; i++) {
        
        if (invertido) {
          fill(i % 2 == 0 ? 255 : 0);  
        } else {
          fill(i % 2 == 0 ? 0 : 255);  
        }

        float anchoRaya = tamaño / 5.0;

        if (tipo == 0) {
          rect(x + i * anchoRaya, y, anchoRaya, tamaño);
        } else {
          rect(x, y + i * anchoRaya, tamaño, anchoRaya);
        }
      }
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
