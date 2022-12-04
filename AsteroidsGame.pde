Spaceship ship = new Spaceship();
Star [] stars = new Star[200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();


public void setup() {
  size(500, 500);
  background(0);
  for (int i = 0; i < stars.length; i++)
    stars[i] = new Star();
  for (int i = 0; i < 20; i++)
    rocks.add(i, new Asteroid());
}
public void draw() {
  background(0);
  for (int i = 0; i < stars.length; i++)
    stars[i].show();

  ship.show();
  ship.move();


  for (int i = 0; i < rocks.size(); i++) {
    double d = dist((float)ship.getMyX(), (float)ship.getMyY(), (float)rocks.get(i).getMyX(), (float)rocks.get(i).getMyY());

    if (d > 20) {
      rocks.get(i).show();
      rocks.get(i).move();
    }
    else {
      rocks.remove(i);
      i--;
    }
  }
}



public void keyPressed() {
  if (key == 'w') // move forward
    ship.accelerate(2);

  if (key == 's') // move backward
    ship.accelerate(-2);

  if (key == 'a') // turn left
    ship.turn(-15);

  if (key == 'd') // turn right
    ship.turn(15);

  if (key == 'h') {// hyperspace
    ship.hyperspace();
  }

  if (key == ' ') // stop
    ship.halt();
}
