void setup() {                                              // beginning of setup function
  size (800, 800);                                          // create a canvas that is 800 x 800 px
};                                                          // end of size setup function

void draw() {                                               // beginning of draw function
  int deadCenter = width/2;                                 // create a variable called deadCenter with an interger datatype and assign it a relative value of the width of the canvas, divided by 2
  //this if/and statement toggles the body and background colors 
  if ((mouseX > 250) && (mouseX < 550) &&                   // if the mouse's x axis position is between 250px and 550 px AND...
    (mouseY > 250) && (mouseY < 550)) {                     // if the mouse's y axis position is between 250px and 550 px, do the following:
    noStroke();                                             // remove the outline on the circle
    fill(#9197ba);                                          // fill in the circle a blue/gray color
    //body:
    ellipse(deadCenter, deadCenter, 300, 300);              // create a circle that is in the middle of the canvas and 300x300 px wide/high
  } else {                                                  // otherwise, do the following:
    noStroke();                                             // remove the outline of the circle
    fill (#f7b826);                                         // fill the circle in with a yellow color
    //body:
    ellipse (deadCenter, deadCenter, 300, 300);             // create a circle that is in the middle of the canvas and 300x300 px wide/high
  };                                                        // end of else statement
  // this if/and statement controls the facial toggle states
  if ((mouseX > 250) && (mouseX < 550) &&                   // if the mouse's x axis position is between 250px and 550 px AND...
    (mouseY > 250) && (mouseY < 550)) {                     // if the mouse's y axis position is between 250px and 550 px, do the following:
    //awake state
    background(#9197ba);                                    // make the background blue/gray 
    noStroke();                                             // remove the outline of the circle
    fill (#f7b826);                                         // fill the circle in with a yellow color   
    ellipse (deadCenter, deadCenter, 300, 300);             // create a circle that is in the middle of the canvas and 300x300 px wide/high
    //scleras: 
    fill(#ffffff);                                          // fill in the circles white 
    ellipse(deadCenter - 70, deadCenter - 15, 80, 80);      // left sclera
    ellipse(deadCenter + 70, deadCenter - 15, 80, 80);      // right sclera
    //irises:
    fill(#000000);                                          // fill in the irises black
    ellipse(deadCenter - 70, deadCenter - 15, 50, 50);      // left iris
    ellipse(deadCenter + 70, deadCenter - 15, 50, 50);      // right iris
    //mouth:
    ellipse(400, 490, 30, 40);                              // make an ellipse that's 30x40 pixels
  } else {                                                  // otherwise, do the following:
    //sleep state
    background(#f7b826);                                    // make the background yellow
    noStroke();                                             // remove the outline on the circle
    fill(#9197ba);                                          // fill in the circle a blue/gray color
    //body:
    ellipse(deadCenter, deadCenter, 300, 300);              // create a circle that is in the middle of the canvas and 300x300 px wide/high
    stroke(#000000);                                        // make the outline black
    //closed eyes:
    strokeWeight(9);                                        // make the lineweight very thick
    line(290, 385, 370, 385);                               // left closed eye
    line(430, 385, 510, 385);                               // right closed eye
    fill(#000000);                                          // fill the ellipse in black
    //mouth:
    ellipse(400, 490, 45, 35);                              // make an ellipse that's 45x35 px
  };                                                        // end of else statement
  //nose:
  push();                                                     // push new stylings forward
  strokeJoin(ROUND);                                          // make the joints rounded
  stroke(#f74c26);                                            // make the outline an orangy color
  strokeWeight(5);                                            // make the outline thicker than average
  fill(#f74c26);                                              // fill the triangle in orange
  triangle(380, 440, 400, 410, 420, 440);                     // make a triangle
  pop();                                                      // go back to using the old stylings before push was called.
};                                                          // end of draw function
