int[] hello = new int[3];
boolean[] keep = new boolean[3];


void addSub(){
  
  //by addition
  //add= true; sub = false
  //boolean result = false; 
  for (int i = 0 ; i<3;i++){
      hello[i] = (int)chance();
  }

  for (int i=0;i<3;i++){
     int chance = (int)(classEff[i]*10);
     switch(chance){
   case 0:
     keep[i] = false;
     break;
     
   case 1:
     if(hello[i]<10){
       keep[i] = true;
     }
     break;
     
   case 2:
     if(hello[i]<20){
       keep[i] = true;
     }
     break;
     
   case 3:
     if(hello[i]<30){
       keep[i] = true;
     }
     break;
     
   case 4:
     if(hello[i]<40){
       keep[i] = true;
     }
     break;
     
   case 5:
     if(hello[i]<50){
       keep[i] = true;
     }
     break;
     
   case 6:
     if(hello[i]<60){
       keep[i] = true;
     }
     break;
     
   case 7:
     if(hello[i]<70){
       keep[i] = true;
     }
     break;
     
   case 8:
     if(hello[i]<80){
       keep[i] = true;
     }
     break;   
     
   case 9:
     if(hello[i]<90){
       keep[i] = true;
     }
     break;     
     
   case 10:
     keep[i] = true;
     break;     

  }
    println(keep[i]);
  }
  
  //return result;
}


void detAmt(){
  addSub();
   float amt = 0;

  for (int i=0;i<3;i++){
     
    if(classTest[i]==100){
    classGrade[i] = 100;
  }
    else if (classTest[i]==0){
    classGrade[i] = 0;
  }
     else if(keep[i]==true){
       
        amt = returnRanInt(0,5); 
        classGrade[i] = constrain(classGrade[i], 0,99);
       classGrade[i] = classTest[i]+amt;
       println(classNames[i]+": " + classGrade[i]);
     
 }
     else if (keep[i]==false){
       
       amt = returnRanInt(0,5); 
       classGrade[i] = constrain(classGrade[i], 0,99);
       classGrade[i] = classTest[i]-amt;
       println(classNames[i]+": " + classGrade[i]);
 }
 
    
  }
}


String returnTotalTest(int classN){
  return " " + classGrade[classN];
  
}
