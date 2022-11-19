Spaceship ship = new Spaceship();
Star [] stars = new Star[200];


public void setup() {
  size(500, 500);
  background(0);
  for (int i = 0; i < stars.length; i++)
  stars[i] = new Star();
}
public void draw() {
  background(0);
  for (int i = 0; i < stars.length; i++)
    stars[i].show();

  ship.show();
  ship.move();
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
