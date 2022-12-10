Spaceship ship = new Spaceship();
Star [] stars = new Star[200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> bob = new ArrayList <Bullet>();


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

  for (int i = 0; i < bob.size(); i++) {
    bob.get(i).show();
    bob.get(i).move();
    
    for (int j = 0; j < rocks.size(); j++) {
      double d = dist((float)bob.get(i).getCenterX(), (float)bob.get(i).getCenterY(),
                      (float)rocks.get(j).getCenterX(), (float)rocks.get(j).getCenterY());
      if (d < 15) {
        bob.remove(i);
        rocks.remove(j);
        i--;
        break;
      }
    }
  }

  for (int i = 0; i < rocks.size(); i++) {
    double d = dist((float)ship.getCenterX(), (float)ship.getCenterY(), (float)rocks.get(i).getCenterX(), (float)rocks.get(i).getCenterY());

    if (d > 20) {
      rocks.get(i).show();
      rocks.get(i).move();
    } else {
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
    
  if (key == 'k') // shoot
    bob.add(new Bullet(ship));
}
