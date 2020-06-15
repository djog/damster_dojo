float hoek_kanon = 0;
float x_kogel = 0;
float y_kogel = -100;
float hoek_kogel = 0;
float x_waah = 20;
float y_waah = 20;
float xm = 1;
float ym = 1;
float hm = -0.1;
float am = 0;
float a = 20;
float b = 1;
float c = 0;
int level = 1;

void setup()
{
  frameRate(100);
  fullScreen();
  strokeWeight(5);
}

void draw()
{
  if (level == 1)
  {
  background(0, 255, 0);
  final float x_midden = width / 2;
  final float y_midden = height / 2;
  final float x_kanon = x_midden + (cos(hoek_kanon) * 20);
  final float y_kanon = y_midden - (sin(hoek_kanon) * 20);
  x_kogel = cos(hoek_kogel) * a + width/2;
  y_kogel = sin(hoek_kogel) * a + height/2;
  line(x_midden, y_midden, x_kanon, y_kanon);
  ellipse(x_midden, y_midden, 20, 20);
  ellipse(x_kogel, y_kogel, 2, 2);
  if (b == 1 && c < 1) {
    ellipse(x_waah, y_waah, 40, 40);
  }
  hoek_kogel += hm;
  if (x_waah > width - 20 || x_waah < 20) xm *= -1;
  if (y_waah > height - 20 || y_waah < 20) ym *= -1;
  x_waah += xm;
  y_waah += ym;
  a += am;
  if (keyPressed)
  {
    if (key == ' ')
    {
      hoek_kogel = -hoek_kanon;
      hm = 0;
      a = 20;
      am = 2;
    }
    if (keyCode == LEFT) hoek_kanon += 0.005;
    if (keyCode == RIGHT) hoek_kanon -= 0.005;
  }
  if (dist(x_kogel, y_kogel, x_waah, y_waah) < 20)
  {
    fill(255, 0, 0);
    background(0, 0, 255);
    b = 0;
    level += 1;
  }
  if (level > 2)
  {
    background(0, 0, 255);
  }
  x_kogel = cos(hoek_kogel) * a + width/2;
  y_kogel = sin(hoek_kogel) * a + height/2;
  line(x_midden, y_midden, x_kanon, y_kanon);
  ellipse(x_midden, y_midden, 20, 20);
  ellipse(x_kogel, y_kogel, 2, 2);
  if (b == 1 && c < 1) {
  ellipse(x_waah, y_waah, 40, 40);
  }
  hoek_kogel += hm;
  if (x_waah > width - 20 || x_waah < 20) xm *= -1;
  if (y_waah > height - 20 || y_waah < 20) ym *= -1;
  x_waah += xm;
  y_waah += ym;
  a += am;
  if (keyPressed)
  {
    if (key == ' ')
    {
      hoek_kogel = -hoek_kanon;
      hm = 0;
      a = 20;
      am = 2;
    }
    if (keyCode == LEFT) hoek_kanon += 0.05;
    if (keyCode == RIGHT) hoek_kanon -= 0.05;
  }
  if (dist(x_kogel, y_kogel, x_waah, y_waah) < 20)
  {
    fill(255, 0, 0);
    b = 0;
    level += 1;
  }
}
}
