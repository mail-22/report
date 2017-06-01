 
  
  
    SetLength(vTask, Length(vTask) + 1);
  vTask[High(vTask)].TypeOfTask := Mail;

  cTask[Mail].TypeOfTask := Basic;
  cTask[Mail].strTypeOfTask := 'письмо';

  SetLength(vTask, Length(vTask) + 1);
  vTask[High(vTask)].TypeOfTask := Contract;

  cTask[Contract].TypeOfTask := Basic;
  cTask[Contract].strTypeOfTask := 'договор';