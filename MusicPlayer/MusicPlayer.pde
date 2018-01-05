//Music Player by: Lewis Tran
//Music Player that plays music.


//!!!!!!!!!!MUST READ BEFORE USE!!!!!!!!
/*
//INSTRUCTIONS////
*Play to start the music player, press play button to play music on the music player.
*Player plays the music, if change, press next button and play button to change song.
*Player won't go to prev song if you start the music player and press the prev button on song 1. 
*if current song is in the middle, pressing prev button is allowed. EXAMPLE: if song is in the middle in song 5, prev button works
*Press Pause button to stop the music, play button will not pause.
*Pressing the pause button will make song stop and will redo the song to play it over again.
*If finished, press the off button.
*Chillax, Relax, and enjoy the music..
//INSTRUCTIONS////
*/

//print("Screen Dimension" + "\n  My display width is ", + displayWidth + "\n  My display height is " + displayHeight);
int totalSongs = 14;
SoundFile[] song = new SoundFile[totalSongs]; //Access the song number to access anything about the song
int indexSong = 0; //When program starts, starts at song zero

PFont seg;
float imageXScaled, imageYScaled;
PImage[] pic = new PImage[3]; //Array is 3

float rectWidth = width, rectHeight = height; //width and height 


 
//variables

void setup (){
  
println("start of console"); 
seg = createFont("ArialUnicodeMS-48", 50); //assigns the font
size (800, 600);
//fullScreen();

//THE SOUNDFILE
SoundFile Aeao; // Song #0
SoundFile Am_I_Wrong; // Song #1
SoundFile Bond_Theme; // Song #2
SoundFile Everybody_Knows; // Song #3
SoundFile Feels; // Song #4
SoundFile Half_Moon; // Song #5
SoundFile No_Lies; // Song #6
SoundFile Light_it_Up; // Song #7
SoundFile Love; // Song #8
SoundFile Humble; // Song #9
SoundFile Rey_Theme; // Song #10
SoundFile Thinking_Out_Loud; // Song #11
SoundFile Horror; // Song #12
SoundFile Spongebob; //Song #13

//SONGS
song[0] = new SoundFile(this,"Aeao.mp3"); 
song[1] = new SoundFile(this,"Am_I_Wrong.mp3");  
song[2] = new SoundFile(this,"Humble.mp3"); 
song[3] = new SoundFile(this,"Horror.mp3"); 
song[4] = new SoundFile(this,"Feels.mp3"); 
song[5] = new SoundFile(this,"Half_Moon.mp3"); 
song[6] = new SoundFile(this,"No_Lies.mp3"); 
song[7] = new SoundFile(this,"Light_it_Up.mp3"); 
song[8] = new SoundFile(this,"Love.mp3"); 
song[9] = new SoundFile(this,"Bond_Theme.mp3"); 
song[10] = new SoundFile(this,"Rey_Theme.mp3"); 
song[11] = new SoundFile(this,"Thinking_Out_Loud.mp3"); 
song[12] = new SoundFile(this,"Everybody_Knows.mp3");
song[13] = new SoundFile(this,"Spongebob.mp3");


//SHAPES

//print("Screen Dimension" + "\n  My display width is ", + displayWidth + "\n  My display height is " + displayHeight);
   
//The Layout of Music Player
    rect(0, 450, 800, 150); // the controls
    rect(0,0,180,450); // previous song
    rect(620,0,180,450); // next song
    rect(180,0,440,50); //caption
    rect(10,520,100,50); // Quit button
    rect(690,515,100,50); //Pause
    
//Music Player Controls layout
  ellipse(400, 530, 100+10, 100+10); //for play button circle
   triangle(90,180,5,220,90,260); //fast backward #1
  triangle(90,220,170,180,170,260); //fast backward #2
  triangle(710,260,710,180,795,220); //fast forward #1
   triangle(710,220,630,180,630,260); // fast forward #2
   triangle(440,535,370,500,370,570); // play button
}
  
void images(){
    pic[0]= loadImage("MusicEmoji.jpg"); //894 x 894
    image(pic[0],180,50,440,400);
    
     pic[1]= loadImage("Pauses.png"); // 512 x 512 
    image(pic[1],690,515,100,50); 
    
     pic[2]= loadImage("off.png"); // 269 x 269
   image(pic[2],10,520,100,50); 
   
}


void draw (){
  
   noStroke();    // assigns the blue color for the bigger shapes
   fill(#2523D8);
  
  /*
////////IMAGE FOR COVER//////////
   */
   
//image 0 for cover
    pic[0]= loadImage("MusicEmoji.jpg"); //Thumbnail #1 894 x 894
    image(pic[0],180,50,440,400);
  
//Color for BIGGER 2-d shapes
   stroke(1);
   rect(0, 450, 800, 150); // the controls
   rect(0,0,180,450); // previous song
   rect(620,0,180,450); // next song
   rect(180,0,440,50); //caption
   ellipse(400, 530, 100+10, 100+10); //circle to play
   rect(690,515,100,50); //Pause

  
//Color for SMALLER 2-d shapes
  stroke(1);   // assigns the color for the smaller shapes
  fill(#B9BBE5);   
  triangle(90,180,5,220,90,260); //fast backward #1
  triangle(90,220,170,180,170,260); //fast backward #2
  triangle(710,260,710,180,795,220); //fast forward #1
  triangle(710,220,630,180,630,260); // fast forward #2
  rect(10,520,100,50); // Quit button
  triangle(440,535,370,500,370,570); // play button
 
//Text for Captions
   String title = " Just Relax and Chillax... "; //  String must be long enough to type
   PFont titleFont;
   titleFont = createFont ("ArialUnicodeMS-48", 10); // font for the text
   rect (180,0,440,50); //Title Rectangle
   textFont(titleFont, 10); // Type of font needed, size needed 
   textAlign (CENTER);

   textSize (50); //Needed for textWidth Calc
   float textLength = 420; // Needed for Variable inside
   for (float i=1; textWidth(title) > 440; i = i - 0.01) {
   textLength = textLength*i;
   textSize (textLength);
   println("For" + textLength);
}    //Resizing Algorithm 

  textSize (textLength);
  fill (0); //Black Ink
  text(title, 180, 0, 440,50); 
  fill(255);
  
  /*
//////////IMAGES FOR BUTTONS//////////
*/
   //image 1
   pic[1]= loadImage("Pauses.png"); // 512 x 512 thumbnail #1
    image(pic[1],690,515,100,50); 
    
  //image 2
   pic[2]= loadImage("off.png"); //269 x 269 thumbnail #2
   image(pic[2],10,520,100,50); 

 }