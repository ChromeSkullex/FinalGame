void sleep(){
  for (int i=4;(mouseY>=buttonsY[i])&&(mouseY-buttonsY[i]<=BUTTON_HEIGHT);){

    if(numHour>=23){//to get 8 hours of sleep, so they can wake up at 7
      //Energy=1;
      checkNewDay();
    }
    fill(255);
    if(Hunger<.25){
      checkHealth();
    }
    else{
          Health +=.2;
    }

  text("zzz...zzz...zzz",textX,textY);
  textY+=TEXT_HEIGHT;
 
  break;
      }
    }
