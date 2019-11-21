class Star //note that this class does NOT extend Floater
{
  double size;
  double locationX;
  double locationY;
  int col1;
  int col2;
  int col3;
  Star(){
    size = Math.random() * 4.0;
    locationX = ((double)width) * Math.random();
    locationY = ((double)height) * Math.random();
    col1 = (int)(Math.random() * 100) + 155;
    col2 = (int)(Math.random() * 100) + 155;
    col3 = (int)(Math.random() * 100) + 155;
  }
  void show(){
    fill(col1, col2, col3);
    stroke(col1, col2, col3);
    ellipse((float)locationX, (float)locationY, (float)size, (float)size);
  }
}
