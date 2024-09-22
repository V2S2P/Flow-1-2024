class Snake {
  int[] xpos;
  int[] ypos;
  int length;

  Snake(int maxLength) {
    xpos = new int[maxLength];
    ypos = new int[maxLength];
    length = maxLength;

    for (int i = 0; i < length; i++) {
      xpos[i] = 0;
      ypos[i] = 0;
    }
  }

  void update(int mouseX, int mouseY) {
    for (int i = 0; i < length - 1; i++) {
      xpos[i] = xpos[i+1];
      ypos[i] = ypos[i+1];
    }
    xpos[length - 1] = mouseX;
    ypos[length - 1] = mouseY;
  }

  void display(color c) {
    for (int i = 0; i < length; i++) {
      noStroke();
      fill(c-i);
      ellipse(xpos[i], ypos[i], 32, 32);
    }
    for (int i = 0; i < length; i++) {
      noStroke();
      fill(c-i*5);
      ellipse(xpos[i], ypos[i], 32, 32);
    }
  }
}
