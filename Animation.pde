class Animation {
  PImage[] images;
  int imageCount;
  int frame;
  
  Animation(String imagePrefix, int count) {
    imageCount = count;
    images = new PImage[imageCount];

    for (int i = 0; i < imageCount; i++) {
      // Use nf() to number format 'i' into two digits
      rectMode(CENTER);
      
      String filename = imagePrefix + nf(i, 2) + ".png";
      images[i] = loadImage(filename);
    }
  }
 void display(float xpos, float ypos) {
     fill(48);
    noStroke();
    rectMode(CORNER);
    rect((width-BUTTON_WIDTH)*.46, 2*BUTTON_HEIGHT,315,300);
   frameRate(12);
    frame = (frame+1) % imageCount;
    image(images[frame], xpos, ypos);
  
  }
  
  int getWidth() {
    return images[0].width;
  }
}
