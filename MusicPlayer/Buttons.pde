import processing.sound.*;
color gray = #B9BBE5, blue = #2523D8;
color boarder = gray;

void buttonPressed(){ 

fill(boarder);
  
  //SHAPES FOR BUTTONS
  rect(10,520,100,50); // Quit button
  triangle(440,535,370,500,370,570); // play button
  rect(0,0,180,450); // previous song
  rect(620,0,180,450); // next song
  rect(690,515,100,50); //Pause
  
 // the buttons for the music player
 
  if (mouseX > 10 && mouseX < 110 && mouseY > 520 && mouseY < 570) { //off button
   } else {
   boarder = gray;
  } // End of IF for HE
  
  if (mouseX > 350 && mouseX < 450 && mouseY > 470 && mouseY < 580) { //play
   } else {
  boarder = gray;
  } // End of IF for HE
  
 if (mouseX > 690 && mouseX < 790 && mouseY > 500 && mouseY < 550){ // pause
  } else {
    boarder = gray;
  } //End of IF for HE
  
  
 if (mouseX > 0 && mouseX < 200 && mouseY > 0 && mouseY < 450) { // prev
   } else {
     boarder = gray;
  } // End of IF for HE
  
  if (mouseX > 620 && mouseX < 800 && mouseY > 0 && mouseY < 450) { //next
    } else { 
      boarder = gray;
  } // End of IF for HE
  
  
  
//the button sees mouseX & mouseY over the hover-over effect
  println ("Mouse X Variable" + mouseX);
  println ("Mouse X Variable" + mouseY);
  
}


void mousePressed (){
 // Quit
  if (mouseX>=10 && mouseX <=110 && mouseY>=520 && mouseY<=570) { //off button
    exit();   // off button will leave music player
}

// Play Button
  if (mouseX>=350 && mouseX<=450 && mouseY>= 470 && mouseY<580) { // play button
  println("Playing Song " + indexSong + ".");
    song[indexSong].play(); //will play song

}

// Pause/Redo Button
 if (mouseX > 690 && mouseX < 790 && mouseY > 500 && mouseY < 550) { // Pause Button
  println("Stopping Song" + indexSong + ".");
  song[indexSong].stop(); //Pause will stop song and redo 
}

// Prev Button
 if (mouseX > 0 && mouseX < 200 && mouseY > 0 && mouseY < 450) { // prev button
   println("Choosing previous song");
    song[indexSong].stop(); //Must stop the current song to play prev song 
    indexSong = indexSong - 1; //Other formula: index -= 1; 
    println ("Song Number: " + indexSong); // Song will stop and play once prev button is pressed
 } 
 
 // Next Button
  if (mouseX > 620 && mouseX < 800 && mouseY > 0 && mouseY < 450) { // next button
    println("Choosing next song");
    song[indexSong].stop(); //Must stop the current song to play next song 
    indexSong = indexSong + 1; //Other formula: index -= 1; 
    println ("Song Number: " + indexSong); // Song will stop and play once next button is pressed
  }
}