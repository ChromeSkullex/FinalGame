void randomGoClass(){
 //just random social interactions to spice it up besides the random events 
 //switch cases time WOOOOO!! 
 int ranNum = (int)((Math.random()*((10-1)+1))+1);
 fill(255);
 print(ranNum);
 int tempNum = ranNum;
 switch(ranNum){
   case 1:
     text("You group mates decide to leave your name out of the presentation...",textX,textY);
       textY+=TEXT_HEIGHT;
     break;
   case 2:
     text("You learned something new",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 3:
     text("You learned nothing new...",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 4:
     text("Your eyes begin to hurt",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 5:
     text("You were falling asleep so you tried to hide your eyes with your hands",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 6:
     text("Your professor keeps calling on you... You didn't do anything wrong...",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 7:
     text("You decide to sit at the back, it was pretty distracting",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 8:
     text("You sat at the front, you can see better",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 9:
     text("Is there a quiz tomorrow?",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 10:
     text("Please stop reusing the same jokes...",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
 }
  
}






void goToClass(){
   boolean checkClass = false;
  int classSession =0;
  
  for (int i =0 ; i<classHour.length;i++){
    if (numHour == classHour[i] && dayRef<5){
      checkClass = true;
      classSession = i;
    }
  }

  
  for (int i=0;(mouseY>=buttonsY[i])&&(mouseY-buttonsY[i]<=BUTTON_HEIGHT);){
  
  if (checkClass){
    fill(255);
    randomGoClass();
         newHour();
        increaseEff(classSession, .1);
        //Grade+=.1;
        Happy-=.1;
        if(Happy<0){
          Happy=0;
        }
        
  }
  else {
    //you cannot go to class if it's not in session 
    fill(255);
    text("you cannot go to class since it's not in session",textX,textY);
         textY+=TEXT_HEIGHT;
  }
  
  
  
  checkNewDay();
  break;
  }
}
