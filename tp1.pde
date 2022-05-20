PImage imagen;
PFont s;
PImage imagen2;

float sumita;
float tiempote ;

float tamano;

color opa1, opa2, opa3, opa4, opa5 ;

void setup() {



  size (600, 600);
  sumita=1;
  tiempote= 0;
  tamano=50;
  imagen=loadImage("94254.png");

  s = createFont("SHREK___.TTF", 200);
  imagen2=loadImage("burro.png");

  noCursor();
  opa1=255;
  opa2=0;
  opa3=0;
  opa4=0;
  opa5=0;
}




void draw() {

  println(frameCount);
  background(255);

  tiempote=tiempote+sumita; 
  textFont(s, 20);



  image(imagen, CENTER, CENTER, 600, 600);

if (frameCount == 200) {
    opa1 = 0 ;


  fill(255, 255, 255, opa1 );  
  text("SHREK:\nElenco:\nshrek,burro,fiona,\ngato con botas lord farquaad,", 240, 400);

}if (frameCount == 300) {
    opa2 = 255;
  } else if (frameCount >=450) {
    opa2 = 0;
  }
  fill(255, 255, 255, opa2); 
  text("producer\nAron Warner\nJohn H. Williams\njeffrey Katzenberg", 200, 400);
  if (frameCount == 300) {
    opa2 = 255;
  } else if (frameCount >=450) {
    opa2 = 0;
  }



  fill(255, 255, 255, opa3 );
  text("Executive Producer\nPenney Finkelman Cox\nSandra Rabins", 200, 400);

  if (frameCount == 500) {
    opa3 =255;
  } else if (frameCount >=650) {
    opa3 = 0;

  }

    fill(255, 255, 255, opa4 );
    text("CO.Executive Producer\nDavid Lipman", 200, 400);
    if (frameCount == 650) {
      opa4 =255;
    } else if (frameCount>=800) {
      opa4-=10;

    }

      fill(255, 255, 255, opa5 );
      text("Music supervisor  Marylata E. jacob\nMusic Editor  Braian Richards\nScore Recorded at Abbey Road Studios\nScore Mixed at Front Page Recorders", 200, 400);
      if (frameCount == 650) {
        opa5 =255;
      } else if (frameCount>=800) {
        opa5-=10;
      
      }



      tamano=random(50, 100);
      image(imagen2, mouseX, mouseY, tamano, tamano+5);
      println("x");
      println(mouseX);
      println("y");
      println(mouseY);
    }
