//ALEXIS HURTADO LEGAJO: 122733/0
//presionar la tecla "ENTER" para reiniciar

PImage P, foto2, foto3, espada;
PFont fuente;
String titulo;
int posx, posy;
float alpha = 255;
boolean desvanecer = false;

float yDirector = 550;
float yTitulo = 650;
float yNombres = 750;
float alphaCreditos = 255;

float ySoundtrack = -100;
float yHaloTheme = -50;
float yTheArtifact = 0;
float yCompositor = 50;
float alphaSoundtrack = 255;


int botonX = 500;
int botonY = 400;
int botonAncho = 120;
int botonAlto = 40;

void setup() {
  noCursor();
  noStroke();
  size(640, 480);

  P = loadImage("foto3.png");
  foto2 = loadImage("foto2.png");
  foto3 = loadImage("sapo.png");
  espada = loadImage("espada.png");

  fuente = loadFont("Colibri.vlw");
  titulo = "HALO";
  posx = 650;
  posy = 369;
}

void draw() {
  background(0);

  if (frameCount <= 400) {
    image(P, 0, 0, width, height);
    textFont(fuente, 48);
    textSize(100);
    fill(255, alpha);
    textAlign(LEFT, CENTER);
    text(titulo, posx, posy);

    if (posx > 200) {
      posx -= 3;
    } else {
      desvanecer = true;
    }

    if (desvanecer && alpha > 0) {
      alpha -= 2;
      if (alpha < 0) alpha = 0;
    }
  }

  else if (frameCount <= 1000) {
    image(foto2, 0, 0, width, height);

    float finalYDirector = 60;
    float finalYTitulo = 300;
    float finalYNombres = 400;

    if (yDirector > finalYDirector) yDirector -= 1.5;
    else yDirector = finalYDirector;

    if (yTitulo > finalYTitulo) yTitulo -= 1.5;
    else yTitulo = finalYTitulo;

    if (yNombres > finalYNombres) yNombres -= 1.5;
    else yNombres = finalYNombres;

    if (yDirector == finalYDirector && yTitulo == finalYTitulo && yNombres == finalYNombres) {
      if (alphaCreditos > 0) {
        alphaCreditos -= 3;
        if (alphaCreditos < 0) alphaCreditos = 0;
      }
    }

    textFont(fuente, 24);
    fill(255, alphaCreditos);
    textAlign(CENTER, CENTER);
    text("Director Principal\nOtto Bathurst", width / 2, yDirector);
    text("Personajes principales", width / 2, yTitulo);

    textAlign(LEFT, CENTER);
    text("John-117\nPablo Schreiber", 50, yNombres);

    textAlign(CENTER, CENTER);
    text("Riz-028\nNatasha Culzac", width / 2, yNombres);

    textAlign(RIGHT, CENTER);
    text("Kai-125\nKate Kennedy", width - 50, yNombres);
  }

  else {
    image(foto3, 0, 0, width, height);

    float finalYSoundtrack = 150;
    float finalYHaloTheme = 200;
    float finalYTheArtifact = 250;
    float finalYCompositor = 300;

    if (ySoundtrack < finalYSoundtrack) ySoundtrack += 1;
    else ySoundtrack = finalYSoundtrack;

    if (yHaloTheme < finalYHaloTheme) yHaloTheme += 1;
    else yHaloTheme = finalYHaloTheme;

    if (yTheArtifact < finalYTheArtifact) yTheArtifact += 1;
    else yTheArtifact = finalYTheArtifact;

    if (yCompositor < finalYCompositor) yCompositor += 1;
    else yCompositor = finalYCompositor;

    fill(250, alphaSoundtrack);
    textFont(fuente, 28);
    textAlign(CENTER, CENTER);
    text("Soundtrack de la serie:", width / 2, ySoundtrack);
    text("Halo Theme", width / 2, yHaloTheme);
    text("The Artifact", width / 2, yTheArtifact);
    text("Compositor\\Sean Callery", width / 2, yCompositor);

    
    fill(100, 150, 255);
    rect(botonX, botonY, botonAncho, botonAlto, 10);

    fill(255);
    textFont(fuente, 20);
    textAlign(CENTER, CENTER);
    text("Reiniciar", botonX + botonAncho / 2, botonY + botonAlto / 2);
  }

  tint(255);
  image(espada, mouseX, mouseY, 50, 50);
}

void reiniciarTodo() {
  frameCount = 1;
  posx = 650;
  alpha = 255;
  desvanecer = false;

  yDirector = 550;
  yTitulo = 650;
  yNombres = 750;
  alphaCreditos = 255;

  ySoundtrack = -100;
  yHaloTheme = -50;
  yTheArtifact = 0;
  yCompositor = 50;
  alphaSoundtrack = 255;
}

void keyPressed() {
  if (key == ENTER || key == RETURN) {
    reiniciarTodo();
  }
}

void mousePressed() {
  if (frameCount > 1000) {
    if (mouseX >= botonX && mouseX <= botonX + botonAncho &&
        mouseY >= botonY && mouseY <= botonY + botonAlto) {
      reiniciarTodo();
    }
  }
}
