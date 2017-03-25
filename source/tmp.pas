Фильтр грида никак не влияет на датасет. 
Вот обход по фильтрованным записям, 
Код:
 
   for i := 0 to DBTVList.DataController.FilteredRecordCount - 1 do 
    begin 
      tmpRecordIndex := DBTVList.DataController.FilteredRecordIndex[i]; 
	  
      tmpObjectID := nvl(DBTVList.DataController.GetValue(tmpRecordIndex, DBTVList_ObjectID.Index), -1); 
	  
      tmpServerID := nvl(DBTVList.DataController.GetValue(tmpRecordIndex, DBTVList_ServerID.Index), -1); 
	  
      tmpObjectNumber := nvl(DBTVList.DataController.GetValue(tmpRecordIndex, DBTVList_ObjectNumber.Index), -1); 
	  
      if((tmpObjectID = 0) and AExcludeDefaultObject) then 
        Continue; 
		
      if(CheckObjectID(tmpObjectID) and CheckServerID(tmpServerID) and CheckObjectNumber(tmpObjectNumber)) then 
        tmpL.Add(FormatFullObjectNumber(tmpServerID, tmpObjectNumber)); 
		
    end; 
	
	
	получить значение фильтра конкретного столбца:

vValue := View.DataController.Filter.FindItemByItemLink(Viewf1).Value;