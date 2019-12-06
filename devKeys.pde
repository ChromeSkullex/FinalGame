//all of the dev keys we need, feel free to add some

void keyPressed() {
  //Increase by 1 Day
  if (key == 'd') {
    newDay();
  } 
  else if (key == 'k'){
    Health = 0;
    checkHealth();
  }
  
  //Trigger end Screen
  else if (key == 'e'){
    week =3;
  }
  
  //trigger question
     else if (key == 'q'){
    questionApp = true;
  }
  //increase all Grade by 10%
    else if (key == 'g'){
    
      gradeClass1=constrain(gradeClass1, 0, 90);
      gradeClass1+=10;
      gradeClass2=constrain(gradeClass2, 0, 90);
      gradeClass2+=10;
      gradeClass3=constrain(gradeClass3, 0, 90);
      gradeClass3+=10;
    
    
  }
  
  //increase all TestEfficiency 
    else if (key == 'x'){
    
       effClass1 = constrain(effClass1, 0, .9);
       effClass1+= .1;
       effClass2 = constrain(effClass2, 0, .9);
       effClass2+= .1;
       effClass3 = constrain(effClass3, 0, .9);
       effClass3+= .1;

    
    
  }
  
  else if (key == 't'){
    
       testClass1 = constrain(testClass1, 0, 90);
       testClass1+= 10;
       testClass2 = constrain(testClass2, 0, 90);
       testClass2+= 10;
       testClass3 = constrain(testClass3, 0, 90);
       testClass3+= 10;
  for (int i = 0; i<3;i++){
     println("Total for " + classNames[i] +": " + classTest[i]);
  }
    
    
  }
}
