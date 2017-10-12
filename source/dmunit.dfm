object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 320
  Top = 281
  Height = 477
  Width = 760
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.mdb'
    Left = 90
    Top = 294
  end
  object JvDBFilter1: TJvDBFilter
    Left = 58
    Top = 338
  end
  object dsReport: TDataSource
    DataSet = tblReport2
    Left = 174
    Top = 104
  end
  object UniConnection1: TUniConnection
    ProviderName = 'Access'
    Database = 'C:\github\report\bin\r1.mdb'
    DefaultTransaction = UniTransaction1
    Username = 'admin'
    Password = '1'
    Connected = True
    Left = 38
    Top = 72
  end
  object AccessUniProvider1: TAccessUniProvider
    Left = 37
    Top = 8
  end
  object UniTransaction1: TUniTransaction
    DefaultConnection = UniConnection1
    Left = 40
    Top = 140
  end
  object tblDepart: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO depart'
      '  (depart)'
      'VALUES'
      '  (:depart)')
    SQLDelete.Strings = (
      'DELETE FROM depart'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE depart'
      'SET'
      '  depart = :depart'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT depart FROM depart'
      'WHERE'
      '  id = :id')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from depart;')
    Left = 466
    Top = 272
    object intgrfld1: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #8470
      FieldName = 'id'
      ReadOnly = True
    end
    object strngfldunqry1depart: TStringField
      DisplayLabel = #1054#1090#1076#1077#1083
      FieldName = 'depart'
      Size = 255
    end
    object intgrfldDepartn: TIntegerField
      DisplayLabel = #1085#1086#1084#1077#1088' '#1086#1090#1076#1077#1083#1072
      FieldName = 'n'
    end
  end
  object dsDepart: TDataSource
    DataSet = tblDepart
    OnDataChange = dsDepartDataChange
    Left = 492
    Top = 316
  end
  object tblJpg: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO jpg'
      
        '  (idR1, jpg, ole, text1, filename, filepath, ext, UniqueName, t' +
        'ype)'
      'VALUES'
      
        '  (:idR1, :jpg, :ole, :text1, :filename, :filepath, :ext, :Uniqu' +
        'eName, :type)')
    SQLDelete.Strings = (
      'DELETE FROM jpg'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE jpg'
      'SET'
      
        '  idR1 = :idR1, jpg = :jpg, ole = :ole, text1 = :text1, filename' +
        ' = :filename, filepath = :filepath, ext = :ext, UniqueName = :Un' +
        'iqueName, type = :type'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'UPDATE jpg'
      'SET'
      '  idR1 = :idR1'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT idR1, jpg, ole, text1, filename, filepath, ext, UniqueNam' +
        'e, type FROM jpg'
      'WHERE'
      '  id = :P_1_id')
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT * FROM  jpg  WHERE ( idR1 = :id  )')
    MasterSource = dsReport
    MasterFields = 'id'
    DetailFields = 'idR1'
    AfterInsert = tblJpgAfterInsert
    AfterPost = tblJpgAfterPost
    Left = 294
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 1
      end>
    object intgrfldJpgid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      KeyFields = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object intgrfldJpgidR1: TIntegerField
      FieldName = 'idR1'
    end
    object blbfldJpgjpg: TBlobField
      FieldName = 'jpg'
    end
    object blbfldJpgole: TBlobField
      FieldName = 'ole'
    end
    object strngfldJpgtext1: TStringField
      FieldName = 'text1'
      Size = 255
    end
    object strngfldJpgfilename: TStringField
      FieldName = 'filename'
      Size = 255
    end
    object strngfldJpgfilepath: TStringField
      FieldName = 'filepath'
      Size = 255
    end
    object strngfldJpgext: TStringField
      FieldName = 'ext'
      Size = 50
    end
    object strngfldJpgUniqueName: TStringField
      FieldName = 'UniqueName'
      Size = 255
    end
    object tblTypeOfDoc: TStringField
      DisplayLabel = #1074#1080#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'type'
      Size = 255
    end
  end
  object dsJpg: TDataSource
    DataSet = tblJpg
    Left = 302
    Top = 280
  end
  object tblEmpl: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO employees'
      '  (id_depart, surname)'
      'VALUES'
      '  (:id_depart, :surname)')
    SQLDelete.Strings = (
      'DELETE FROM employees'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE employees'
      'SET'
      '  id_depart = :id_depart, surname = :surname'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'UPDATE employees'
      'SET'
      '  id_depart = :id_depart'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT id_depart, surname FROM employees'
      'WHERE'
      '  id = :P_1_id')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from employees where ( id_depart = :id)')
    MasterSource = dsDepart
    MasterFields = 'id'
    DetailFields = 'id_depart'
    Left = 548
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 1
      end>
    object intgrfld2: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #8470
      FieldName = 'id'
      ReadOnly = True
    end
    object intgrfldEmplid_depart: TIntegerField
      FieldName = 'id_depart'
    end
    object strngfldEmplsurname: TStringField
      FieldName = 'surname'
      Size = 255
    end
  end
  object ds1: TDataSource
    DataSet = tblEmpl
    Left = 596
    Top = 308
  end
  object dsReportFiltr: TDataSource
    DataSet = tblReportFiltr2
    Left = 638
    Top = 152
  end
  object tblReport2: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO r1'
      
        '  (type_task_i, type_task_str, department, responsible, deadline' +
        ', basis, basis_N, basis_ffile, contract_name, contract_number, c' +
        'ontract_file, costofwork_F, invoice, invoice_file, payment_note,' +
        ' payment_date, performance_of_work_note, performance_of_work_fil' +
        'e, performance_of_work_date, act_acceptance, act_acceptance_file' +
        ', contract_execution_note, contract_execution_file, dog_Primech,' +
        ' emty, mail_Num_In, mail_Correspondent, mail_Data_In, mail_Soder' +
        'ganie, mail_F, mail_Ispolnitel, mail_Resoluzia, nir_zayvka, nir_' +
        'zayvka_file, nir_zayvka_otpravleno, nir_plan, nir_teh_zad, nir_t' +
        'z, nir_etap_srok, nir_otchet, nir_act, nir_vnedrenie, dog_Zakazc' +
        'hik, dog_Predmet, dog_Napravleniy, dog_Podpisan, `_SchedulerDBSt' +
        'orage_START`, `_ID`, ParentID, Type, Start, Finish, Options, Cap' +
        'tion, RecurrenceIndex, RecurrenceInfo, ResourceID, Location, Mes' +
        'sage, ReminderDate, ReminderMinutes, State, LabelColor, ActualSt' +
        'art, ActualFinish, SyncIDField, `__SchedulerDBStorage_END`)'
      'VALUES'
      
        '  (:type_task_i, :type_task_str, :department, :responsible, :dea' +
        'dline, :basis, :basis_N, :basis_ffile, :contract_name, :contract' +
        '_number, :contract_file, :costofwork_F, :invoice, :invoice_file,' +
        ' :payment_note, :payment_date, :performance_of_work_note, :perfo' +
        'rmance_of_work_file, :performance_of_work_date, :act_acceptance,' +
        ' :act_acceptance_file, :contract_execution_note, :contract_execu' +
        'tion_file, :dog_Primech, :emty, :mail_Num_In, :mail_Corresponden' +
        't, :mail_Data_In, :mail_Soderganie, :mail_F, :mail_Ispolnitel, :' +
        'mail_Resoluzia, :nir_zayvka, :nir_zayvka_file, :nir_zayvka_otpra' +
        'vleno, :nir_plan, :nir_teh_zad, :nir_tz, :nir_etap_srok, :nir_ot' +
        'chet, :nir_act, :nir_vnedrenie, :dog_Zakazchik, :dog_Predmet, :d' +
        'og_Napravleniy, :dog_Podpisan, :`_SchedulerDBStorage_START`, :`_' +
        'ID`, :ParentID, :Type, :Start, :Finish, :Options, :Caption, :Rec' +
        'urrenceIndex, :RecurrenceInfo, :ResourceID, :Location, :Message,' +
        ' :ReminderDate, :ReminderMinutes, :State, :LabelColor, :ActualSt' +
        'art, :ActualFinish, :SyncIDField, :`__SchedulerDBStorage_END`)')
    SQLDelete.Strings = (
      'DELETE FROM r1'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE r1'
      'SET'
      
        '  type_task_i = :type_task_i, type_task_str = :type_task_str, de' +
        'partment = :department, responsible = :responsible, deadline = :' +
        'deadline, basis = :basis, basis_N = :basis_N, basis_ffile = :bas' +
        'is_ffile, contract_name = :contract_name, contract_number = :con' +
        'tract_number, contract_file = :contract_file, costofwork_F = :co' +
        'stofwork_F, invoice = :invoice, invoice_file = :invoice_file, pa' +
        'yment_note = :payment_note, payment_date = :payment_date, perfor' +
        'mance_of_work_note = :performance_of_work_note, performance_of_w' +
        'ork_file = :performance_of_work_file, performance_of_work_date =' +
        ' :performance_of_work_date, act_acceptance = :act_acceptance, ac' +
        't_acceptance_file = :act_acceptance_file, contract_execution_not' +
        'e = :contract_execution_note, contract_execution_file = :contrac' +
        't_execution_file, dog_Primech = :dog_Primech, emty = :emty, mail' +
        '_Num_In = :mail_Num_In, mail_Correspondent = :mail_Correspondent' +
        ', mail_Data_In = :mail_Data_In, mail_Soderganie = :mail_Sodergan' +
        'ie, mail_F = :mail_F, mail_Ispolnitel = :mail_Ispolnitel, mail_R' +
        'esoluzia = :mail_Resoluzia, nir_zayvka = :nir_zayvka, nir_zayvka' +
        '_file = :nir_zayvka_file, nir_zayvka_otpravleno = :nir_zayvka_ot' +
        'pravleno, nir_plan = :nir_plan, nir_teh_zad = :nir_teh_zad, nir_' +
        'tz = :nir_tz, nir_etap_srok = :nir_etap_srok, nir_otchet = :nir_' +
        'otchet, nir_act = :nir_act, nir_vnedrenie = :nir_vnedrenie, dog_' +
        'Zakazchik = :dog_Zakazchik, dog_Predmet = :dog_Predmet, dog_Napr' +
        'avleniy = :dog_Napravleniy, dog_Podpisan = :dog_Podpisan, `_Sche' +
        'dulerDBStorage_START` = :`_SchedulerDBStorage_START`, `_ID` = :`' +
        '_ID`, ParentID = :ParentID, Type = :Type, Start = :Start, Finish' +
        ' = :Finish, Options = :Options, Caption = :Caption, RecurrenceIn' +
        'dex = :RecurrenceIndex, RecurrenceInfo = :RecurrenceInfo, Resour' +
        'ceID = :ResourceID, Location = :Location, Message = :Message, Re' +
        'minderDate = :ReminderDate, ReminderMinutes = :ReminderMinutes, ' +
        'State = :State, LabelColor = :LabelColor, ActualStart = :ActualS' +
        'tart, ActualFinish = :ActualFinish, SyncIDField = :SyncIDField, ' +
        '`__SchedulerDBStorage_END` = :`__SchedulerDBStorage_END`'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'UPDATE r1'
      'SET'
      '  type_task_i = :type_task_i'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT type_task_i, type_task_str, department, responsible, dead' +
        'line, basis, basis_N, basis_ffile, contract_name, contract_numbe' +
        'r, contract_file, costofwork_F, invoice, invoice_file, payment_n' +
        'ote, payment_date, performance_of_work_note, performance_of_work' +
        '_file, performance_of_work_date, act_acceptance, act_acceptance_' +
        'file, contract_execution_note, contract_execution_file, dog_Prim' +
        'ech, emty, mail_Num_In, mail_Correspondent, mail_Data_In, mail_S' +
        'oderganie, mail_F, mail_Ispolnitel, mail_Resoluzia, nir_zayvka, ' +
        'nir_zayvka_file, nir_zayvka_otpravleno, nir_plan, nir_teh_zad, n' +
        'ir_tz, nir_etap_srok, nir_otchet, nir_act, nir_vnedrenie, dog_Za' +
        'kazchik, dog_Predmet, dog_Napravleniy, dog_Podpisan, `_Scheduler' +
        'DBStorage_START`, `_ID`, ParentID, Type, Start, Finish, Options,' +
        ' Caption, RecurrenceIndex, RecurrenceInfo, ResourceID, Location,' +
        ' Message, ReminderDate, ReminderMinutes, State, LabelColor, Actu' +
        'alStart, ActualFinish, SyncIDField, `__SchedulerDBStorage_END` F' +
        'ROM r1'
      'WHERE'
      '  id = :id')
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT * FROM r1 ;')
    OnNewRecord = tblReport2NewRecord
    Left = 224
    Top = 40
    object tblReport2id: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      ReadOnly = True
    end
    object tblReport2department: TStringField
      DisplayLabel = 'id '#1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
      FieldName = 'department'
      ProviderFlags = [pfInUpdate, pfInWhere, pfHidden]
      Size = 255
    end
    object DepartL: TStringField
      DisplayLabel = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
      DisplayWidth = 255
      FieldKind = fkLookup
      FieldName = 'DepartL'
      LookupDataSet = tblDepart
      LookupKeyFields = 'id'
      LookupResultField = 'depart'
      KeyFields = 'department'
      Size = 255
      Lookup = True
    end
    object tblReport2responsible: TStringField
      DisplayLabel = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
      FieldName = 'responsible'
      Size = 255
    end
    object tblReport2deadline: TDateTimeField
      DisplayLabel = #1089#1088#1086#1082' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
      FieldName = 'deadline'
    end
    object strngfldReport2type_task_i: TStringField
      DisplayLabel = #1090#1080#1087' '#1079#1072#1076#1072#1095#1080' i'
      FieldName = 'type_task_i'
      Size = 255
    end
    object strngfldReport2type_task_str: TStringField
      DisplayLabel = #1090#1080#1087' '#1079#1072#1076#1072#1095#1080' s'
      FieldName = 'type_task_str'
      Size = 255
    end
    object tblReport2basis: TStringField
      DisplayLabel = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1076#1083#1103' '#1076#1086#1075#1086#1074#1086#1088#1072'  - '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '
      FieldName = 'basis'
      Size = 255
    end
    object strngfldReport2basis_N: TStringField
      DisplayLabel = #1086#1089#1085#1086#1074#1072#1085#1080#1077' '#1076#1083#1103' '#1076#1086#1075#1086#1074#1086#1088#1072' - '#1087#1080#1089#1100#1084#1086' '#8470
      FieldName = 'basis_N'
      Size = 255
    end
    object tblReport2basis_ffile: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 
        #1086#1089#1085#1086#1074#1072#1085#1080#1077' '#1076#1083#1103' '#1076#1086#1075#1086#1074#1086#1088#1072'  - '#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072' ('#1079#1072#1075#1088#1091#1078#1077#1085' '#1083#1080' '#1073#1099#1083' '#1076#1086#1082#1091#1084#1077#1085 +
        #1090') -'#1092#1072#1081#1083' !'
      FieldName = 'basis_ffile'
    end
    object tblReport2costofwork_F: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'costofwork_F'
    end
    object tblReport2contract_number: TStringField
      DisplayLabel = #1076#1086#1075#1086#1074#1086#1088' -'#1085#1086#1084#1077#1088
      FieldName = 'contract_number'
      Size = 255
    end
    object tblReport2contract_name: TStringField
      DisplayLabel = #1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'contract_name'
      Size = 255
    end
    object tblReport2contract_file: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = #1076#1086#1075#1086#1074#1086#1088' - '#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072' ('#1079#1072#1075#1088#1091#1078#1077#1085' '#1083#1080' '#1076#1086#1082#1091#1084#1077#1085#1090') '#1092#1072#1081#1083' !'
      FieldName = 'contract_file'
    end
    object tblReport2invoice: TStringField
      DisplayLabel = #1057#1095#1077#1090' '#1085#1072' '#1086#1087#1083#1072#1090#1091
      FieldName = 'invoice'
      Size = 255
    end
    object tblReport2invoice_file: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = #1089#1095#1077#1090' '#1085#1072' '#1086#1087#1083#1072#1090#1091'  - '#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072' ('#1079#1072#1075#1088#1091#1078#1077#1085' '#1083#1080'  '#1076#1086#1082#1091#1084#1077#1085#1090') -'#1092#1072#1081#1083' !'
      FieldName = 'invoice_file'
    end
    object tblReport2payment_note: TBooleanField
      DisplayLabel = #1086#1090#1084#1077#1090#1082#1072' '#1086#1073' '#1086#1087#1083#1072#1090#1077
      FieldName = 'payment_note'
    end
    object tblReport2payment_date: TDateTimeField
      DisplayLabel = #1076#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
      FieldName = 'payment_date'
    end
    object tblReport2performance_of_work_note: TBooleanField
      DisplayLabel = #1074#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1099' - '#1054#1090#1084#1077#1090#1082#1072
      FieldName = 'performance_of_work_note'
    end
    object tblReport2performance_of_work_file: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 
        #1074#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1099'  - '#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072' ('#1079#1072#1075#1088#1091#1078#1077#1085' '#1083#1080'  '#1076#1086#1082#1091#1084#1077#1085#1090') -'#1092#1072#1081#1083 +
        ' !'
      FieldName = 'performance_of_work_file'
    end
    object tblReport2performance_of_work_date: TDateTimeField
      DisplayLabel = #1074#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1099' - '#1076#1072#1090#1072
      FieldName = 'performance_of_work_date'
    end
    object tblReport2act_acceptance: TStringField
      DisplayLabel = #1056#1077#1082#1074#1080#1079#1080#1090#1099
      FieldName = 'act_acceptance'
      Size = 255
    end
    object tblReport2act_acceptance_file: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = #1040#1082#1090' '#1089#1076#1072#1095#1080' '#1087#1088#1080#1077#1084#1082#1080'  - '#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072' ('#1079#1072#1075#1088#1091#1078#1077#1085' '#1076#1086#1082#1091#1084#1077#1085#1090') - '#1092#1072#1081#1083' !'
      FieldName = 'act_acceptance_file'
    end
    object blnfldReport2contract_execution_note: TBooleanField
      DisplayLabel = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1087#1083#1072#1090#1077#1078#1072
      FieldName = 'contract_execution_note'
    end
    object tblReport2contract_execution_file: TSmallintField
      DefaultExpression = '0'
      DisplayLabel = 
        #1074#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1072' - '#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072' ('#1079#1072#1075#1088#1091#1078#1077#1085' '#1083#1080' '#1076#1086#1082#1091#1084#1077#1085#1090') - '#1092#1072#1081 +
        #1083' !'
      FieldName = 'contract_execution_file'
    end
    object strngfldReport2emty: TStringField
      FieldName = 'emty'
      Size = 255
    end
    object tblReport2dog_Zakazchik: TStringField
      DisplayLabel = #1047#1072#1082#1072#1079#1095#1080#1082
      FieldName = 'dog_Zakazchik'
      Size = 255
    end
    object tblReport2dog_Predmet: TStringField
      DisplayLabel = #1055#1088#1077#1076#1084#1077#1090
      FieldName = 'dog_Predmet'
      Size = 255
    end
    object tblReport2dog_Primech: TStringField
      DisplayLabel = #1076#1086#1075#1086#1074#1086#1088' - '#1087#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'dog_Primech'
      Size = 255
    end
    object strngfldReport2mail_Num_In: TStringField
      DisplayLabel = #1074#1093#1086#1076#1103#1097#1080#1081' '#1085#1086#1084#1077#1088
      FieldName = 'mail_Num_In'
      Size = 255
    end
    object strngfldReport2mail_Correspondent: TStringField
      DisplayLabel = #1082#1086#1088#1088#1077#1089#1087#1086#1085#1076#1077#1085#1090' '
      FieldName = 'mail_Correspondent'
      Size = 255
    end
    object strngfldReport2mail_Soderganie: TStringField
      DisplayLabel = #1082#1088#1072#1090#1082#1086#1077' '#1089#1086#1076#1077#1088#1078#1072#1085#1080#1077
      FieldName = 'mail_Soderganie'
      Size = 255
    end
    object tblReport2mail_F: TIntegerField
      DisplayLabel = #1055#1080#1089#1100#1084#1086'  - '#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072' ('#1079#1072#1075#1088#1091#1078#1077#1085' '#1083#1080' '#1076#1086#1082#1091#1084#1077#1085#1090') - '#1092#1072#1081#1083' !'
      FieldName = 'mail_F'
    end
    object strngfldReport2mail_Ispolnitel: TStringField
      DisplayLabel = #1054#1090#1074'.'#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
      FieldName = 'mail_Ispolnitel'
      Size = 255
    end
    object strngfldReport2mail_Resoluzia: TStringField
      DisplayLabel = #1056#1077#1079#1086#1083#1102#1094#1080#1103
      FieldName = 'mail_Resoluzia'
      Size = 255
    end
    object dtmfldReport2mail_Data_In: TDateTimeField
      DisplayLabel = #1076#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
      FieldName = 'mail_Data_In'
    end
    object tblReport2nir_plan: TStringField
      DisplayLabel = #1053#1048#1056' '#1087#1083#1072#1085' ('#1053#1048#1054#1050#1056' '#1080#1083#1080' '#1091#1085#1080#1074#1077#1088#1089#1080#1090#1077#1090#1072')'
      FieldName = 'nir_plan'
      Size = 255
    end
    object tblReport2nir_zayvka: TStringField
      DisplayLabel = #1053#1048#1056' '#1079#1072#1103#1074#1082#1072' - '#1086#1073#1086#1089#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'nir_zayvka'
      Size = 255
    end
    object tblReport2nir_zayvka_otpravleno: TDateTimeField
      DisplayLabel = #1053#1048#1056' '#1079#1072#1103#1074#1082#1072' - '#1086#1073#1086#1089#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1086
      FieldName = 'nir_zayvka_otpravleno'
    end
    object tblReport2nir_teh_zad: TStringField
      DisplayLabel = #1053#1048#1056' '#1058#1047
      FieldName = 'nir_teh_zad'
      Size = 255
    end
    object tblReport2nir_tz: TIntegerField
      DisplayLabel = #1053#1048#1056' '#1058#1047' - '#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072' ('#1079#1072#1075#1088#1091#1078#1077#1085' '#1083#1080' '#1076#1086#1082#1091#1084#1077#1085#1090') - '#1092#1072#1081#1083' !'
      FieldName = 'nir_tz'
    end
    object tblReport2nir_etap_srok: TDateTimeField
      DisplayLabel = #1053#1048#1056' '#1089#1088#1086#1082' '#1089#1076#1072#1095#1080' '#1101#1090#1072#1087#1072
      FieldName = 'nir_etap_srok'
    end
    object tblReport2nir_otchet: TIntegerField
      DisplayLabel = #1053#1048#1056' '#1086#1090#1095#1077#1090#1099' - '#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072' ('#1079#1072#1075#1088#1091#1078#1077#1085' '#1083#1080' '#1076#1086#1082#1091#1084#1077#1085#1090') - '#1092#1072#1081#1083' !'
      FieldName = 'nir_otchet'
    end
    object tblReport2nir_act: TIntegerField
      DisplayLabel = 
        #1053#1048#1056' '#1072#1082#1090' '#1089#1076#1072#1095#1080'-'#1087#1088#1080#1077#1084#1082#1080'  - '#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072' ('#1079#1072#1075#1088#1091#1078#1077#1085' '#1083#1080' '#1076#1086#1082#1091#1084#1077#1085#1090') - ' +
        #1092#1072#1081#1083' !'
      FieldName = 'nir_act'
    end
    object tblReport2nir_vnedrenie: TIntegerField
      DisplayLabel = 
        #1053#1048#1056' '#1072#1082#1090' '#1074#1085#1077#1076#1088#1077#1085#1080#1103'   - '#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072' ('#1079#1072#1075#1088#1091#1078#1077#1085' '#1083#1080' '#1076#1086#1082#1091#1084#1077#1085#1090') - '#1092#1072#1081 +
        #1083' !'
      FieldName = 'nir_vnedrenie'
    end
    object tblReport2nir_zayvka_file: TIntegerField
      DisplayLabel = 
        #1053#1048#1056' '#1079#1072#1103#1074#1082#1072' - '#1086#1073#1086#1089#1085#1086#1074#1072#1085#1080#1077'   - '#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072' ('#1079#1072#1075#1088#1091#1078#1077#1085' '#1083#1080' '#1076#1086#1082#1091#1084#1077#1085#1090 +
        ') - '#1092#1072#1081#1083' !'
      FieldName = 'nir_zayvka_file'
    end
    object tblReport2dog_Napravleniy: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103' '#1047#1072#1082#1072#1079#1095#1080#1082#1091
      FieldName = 'dog_Napravleniy'
    end
    object tblReport2dog_Podpisan: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1087#1080#1089#1072#1085#1080#1103
      FieldName = 'dog_Podpisan'
    end
    object tblReport2_SchedulerDBStorage_START: TStringField
      FieldName = '_SchedulerDBStorage_START'
      Size = 255
    end
    object tblReport2_ID: TIntegerField
      FieldName = '_ID'
    end
    object tblReport2ParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object tblReport2Type: TIntegerField
      FieldName = 'Type'
    end
    object tblReport2Start: TDateTimeField
      FieldName = 'Start'
    end
    object tblReport2Finish: TDateTimeField
      FieldName = 'Finish'
    end
    object tblReport2Options: TIntegerField
      FieldName = 'Options'
    end
    object tblReport2Caption: TStringField
      FieldName = 'Caption'
      Size = 255
    end
    object tblReport2RecurrenceIndex: TIntegerField
      FieldName = 'RecurrenceIndex'
    end
    object tblReport2RecurrenceInfo: TBlobField
      FieldName = 'RecurrenceInfo'
    end
    object tblReport2ResourceID: TBlobField
      FieldName = 'ResourceID'
    end
    object tblReport2Location: TStringField
      FieldName = 'Location'
      Size = 255
    end
    object tblReport2Message: TStringField
      FieldName = 'Message'
      Size = 255
    end
    object tblReport2ReminderDate: TDateTimeField
      FieldName = 'ReminderDate'
    end
    object tblReport2ReminderMinutes: TIntegerField
      FieldName = 'ReminderMinutes'
    end
    object tblReport2State: TIntegerField
      FieldName = 'State'
    end
    object tblReport2LabelColor: TIntegerField
      FieldName = 'LabelColor'
    end
    object tblReport2ActualStart: TDateTimeField
      FieldName = 'ActualStart'
    end
    object tblReport2ActualFinish: TDateTimeField
      FieldName = 'ActualFinish'
    end
    object tblReport2SyncIDField: TStringField
      FieldName = 'SyncIDField'
      Size = 255
    end
    object tblReport2__SchedulerDBStorage_END: TIntegerField
      FieldName = '__SchedulerDBStorage_END'
    end
  end
  object tblReportFiltr2: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO r1'
      
        '  (type_task_i, type_task_str, department, responsible, deadline' +
        ', basis, basis_N, basis_ffile, contract_name, contract_number, c' +
        'ontract_file, costofwork_F, invoice, invoice_file, payment_note,' +
        ' payment_date, performance_of_work_note, performance_of_work_fil' +
        'e, performance_of_work_date, act_acceptance, act_acceptance_file' +
        ', contract_execution_note, contract_execution_file, dog_Primech,' +
        ' emty, mail_Num_In, mail_Correspondent, mail_Data_In, mail_Soder' +
        'ganie, mail_F, mail_Ispolnitel, mail_Resoluzia, nir_zayvka, nir_' +
        'zayvka_file, nir_zayvka_otpravleno, nir_plan, nir_teh_zad, nir_t' +
        'z, nir_etap_srok, nir_otchet, nir_act, nir_vnedrenie, dog_Zakazc' +
        'hik, dog_Predmet, dog_Napravleniy, dog_Podpisan, `_SchedulerDBSt' +
        'orage_START`, `_ID`, ParentID, Type, Start, Finish, Options, Cap' +
        'tion, RecurrenceIndex, RecurrenceInfo, ResourceID, Location, Mes' +
        'sage, ReminderDate, ReminderMinutes, State, LabelColor, ActualSt' +
        'art, ActualFinish, SyncIDField, `__SchedulerDBStorage_END`)'
      'VALUES'
      
        '  (:type_task_i, :type_task_str, :department, :responsible, :dea' +
        'dline, :basis, :basis_N, :basis_ffile, :contract_name, :contract' +
        '_number, :contract_file, :costofwork_F, :invoice, :invoice_file,' +
        ' :payment_note, :payment_date, :performance_of_work_note, :perfo' +
        'rmance_of_work_file, :performance_of_work_date, :act_acceptance,' +
        ' :act_acceptance_file, :contract_execution_note, :contract_execu' +
        'tion_file, :dog_Primech, :emty, :mail_Num_In, :mail_Corresponden' +
        't, :mail_Data_In, :mail_Soderganie, :mail_F, :mail_Ispolnitel, :' +
        'mail_Resoluzia, :nir_zayvka, :nir_zayvka_file, :nir_zayvka_otpra' +
        'vleno, :nir_plan, :nir_teh_zad, :nir_tz, :nir_etap_srok, :nir_ot' +
        'chet, :nir_act, :nir_vnedrenie, :dog_Zakazchik, :dog_Predmet, :d' +
        'og_Napravleniy, :dog_Podpisan, :`_SchedulerDBStorage_START`, :`_' +
        'ID`, :ParentID, :Type, :Start, :Finish, :Options, :Caption, :Rec' +
        'urrenceIndex, :RecurrenceInfo, :ResourceID, :Location, :Message,' +
        ' :ReminderDate, :ReminderMinutes, :State, :LabelColor, :ActualSt' +
        'art, :ActualFinish, :SyncIDField, :`__SchedulerDBStorage_END`)')
    SQLDelete.Strings = (
      'DELETE FROM r1'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE r1'
      'SET'
      
        '  type_task_i = :type_task_i, type_task_str = :type_task_str, de' +
        'partment = :department, responsible = :responsible, deadline = :' +
        'deadline, basis = :basis, basis_N = :basis_N, basis_ffile = :bas' +
        'is_ffile, contract_name = :contract_name, contract_number = :con' +
        'tract_number, contract_file = :contract_file, costofwork_F = :co' +
        'stofwork_F, invoice = :invoice, invoice_file = :invoice_file, pa' +
        'yment_note = :payment_note, payment_date = :payment_date, perfor' +
        'mance_of_work_note = :performance_of_work_note, performance_of_w' +
        'ork_file = :performance_of_work_file, performance_of_work_date =' +
        ' :performance_of_work_date, act_acceptance = :act_acceptance, ac' +
        't_acceptance_file = :act_acceptance_file, contract_execution_not' +
        'e = :contract_execution_note, contract_execution_file = :contrac' +
        't_execution_file, dog_Primech = :dog_Primech, emty = :emty, mail' +
        '_Num_In = :mail_Num_In, mail_Correspondent = :mail_Correspondent' +
        ', mail_Data_In = :mail_Data_In, mail_Soderganie = :mail_Sodergan' +
        'ie, mail_F = :mail_F, mail_Ispolnitel = :mail_Ispolnitel, mail_R' +
        'esoluzia = :mail_Resoluzia, nir_zayvka = :nir_zayvka, nir_zayvka' +
        '_file = :nir_zayvka_file, nir_zayvka_otpravleno = :nir_zayvka_ot' +
        'pravleno, nir_plan = :nir_plan, nir_teh_zad = :nir_teh_zad, nir_' +
        'tz = :nir_tz, nir_etap_srok = :nir_etap_srok, nir_otchet = :nir_' +
        'otchet, nir_act = :nir_act, nir_vnedrenie = :nir_vnedrenie, dog_' +
        'Zakazchik = :dog_Zakazchik, dog_Predmet = :dog_Predmet, dog_Napr' +
        'avleniy = :dog_Napravleniy, dog_Podpisan = :dog_Podpisan, `_Sche' +
        'dulerDBStorage_START` = :`_SchedulerDBStorage_START`, `_ID` = :`' +
        '_ID`, ParentID = :ParentID, Type = :Type, Start = :Start, Finish' +
        ' = :Finish, Options = :Options, Caption = :Caption, RecurrenceIn' +
        'dex = :RecurrenceIndex, RecurrenceInfo = :RecurrenceInfo, Resour' +
        'ceID = :ResourceID, Location = :Location, Message = :Message, Re' +
        'minderDate = :ReminderDate, ReminderMinutes = :ReminderMinutes, ' +
        'State = :State, LabelColor = :LabelColor, ActualStart = :ActualS' +
        'tart, ActualFinish = :ActualFinish, SyncIDField = :SyncIDField, ' +
        '`__SchedulerDBStorage_END` = :`__SchedulerDBStorage_END`'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'UPDATE r1'
      'SET'
      '  type_task_i = :type_task_i'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT type_task_i, type_task_str, department, responsible, dead' +
        'line, basis, basis_N, basis_ffile, contract_name, contract_numbe' +
        'r, contract_file, costofwork_F, invoice, invoice_file, payment_n' +
        'ote, payment_date, performance_of_work_note, performance_of_work' +
        '_file, performance_of_work_date, act_acceptance, act_acceptance_' +
        'file, contract_execution_note, contract_execution_file, dog_Prim' +
        'ech, emty, mail_Num_In, mail_Correspondent, mail_Data_In, mail_S' +
        'oderganie, mail_F, mail_Ispolnitel, mail_Resoluzia, nir_zayvka, ' +
        'nir_zayvka_file, nir_zayvka_otpravleno, nir_plan, nir_teh_zad, n' +
        'ir_tz, nir_etap_srok, nir_otchet, nir_act, nir_vnedrenie, dog_Za' +
        'kazchik, dog_Predmet, dog_Napravleniy, dog_Podpisan, `_Scheduler' +
        'DBStorage_START`, `_ID`, ParentID, Type, Start, Finish, Options,' +
        ' Caption, RecurrenceIndex, RecurrenceInfo, ResourceID, Location,' +
        ' Message, ReminderDate, ReminderMinutes, State, LabelColor, Actu' +
        'alStart, ActualFinish, SyncIDField, `__SchedulerDBStorage_END` F' +
        'ROM r1'
      'WHERE'
      '  id = :id')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from r1;')
    Left = 640
    Top = 96
    object IntegerField1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      ReadOnly = True
    end
    object StringField1: TStringField
      DisplayLabel = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' , '#1086#1090#1076#1077#1083
      FieldName = 'department'
      Size = 255
    end
    object StringField2: TStringField
      DisplayLabel = 'DepartL '#1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' , '#1086#1090#1076#1077#1083
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'DepartL'
      LookupDataSet = tblDepart
      LookupKeyFields = 'id'
      LookupResultField = 'depart'
      KeyFields = 'department'
      Lookup = True
    end
    object StringField3: TStringField
      DisplayLabel = ' '#1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1076#1083#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
      FieldName = 'basis'
      Size = 255
    end
    object IntegerField2: TIntegerField
      DisplayLabel = #1054#1089#1085#1086#1074#1072#1085#1080#1077', '#1092#1072#1081#1083
      FieldName = 'basis_ffile'
    end
    object StringField4: TStringField
      DisplayLabel = #1076#1086#1075#1086#1074#1086#1088' -'#1085#1086#1084#1077#1088
      FieldName = 'contract_number'
      Size = 255
    end
    object StringField5: TStringField
      DisplayLabel = #1076#1086#1075#1086#1074#1086#1088' - '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'  '
      FieldName = 'contract_name'
      Size = 255
    end
    object IntegerField3: TIntegerField
      DisplayLabel = #1076#1086#1075#1086#1074#1086#1088' - '#1092#1072#1081#1083
      FieldName = 'contract_file'
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = #1076#1086#1075#1086#1074#1086#1088' - '#1089#1088#1086#1082' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
      FieldName = 'deadline'
    end
    object StringField6: TStringField
      DisplayLabel = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
      FieldName = 'responsible'
      Size = 255
    end
    object StringField7: TStringField
      DisplayLabel = #1057#1095#1077#1090' '#1085#1072' '#1086#1087#1083#1072#1090#1091
      FieldName = 'invoice'
      Size = 255
    end
    object IntegerField5: TIntegerField
      FieldName = 'invoice_file'
    end
    object BooleanField1: TBooleanField
      DisplayLabel = #1086#1090#1084#1077#1090#1082#1072' '#1086#1073' '#1086#1087#1083#1072#1090#1077
      FieldName = 'payment_note'
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = #1086#1090#1084#1077#1090#1082#1072' '#1086#1073' '#1086#1087#1083#1072#1090#1077' '#1076#1072#1090#1072
      FieldName = 'payment_date'
    end
    object BooleanField2: TBooleanField
      DisplayLabel = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1088#1072#1073#1086#1090#1099' '
      FieldName = 'performance_of_work_note'
    end
    object IntegerField6: TIntegerField
      DisplayLabel = #1074#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1099' - '#1092#1072#1081#1083
      FieldName = 'performance_of_work_file'
    end
    object DateTimeField3: TDateTimeField
      DisplayLabel = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1088#1072#1073#1086#1090#1099'  '#1076#1072#1090#1072
      FieldName = 'performance_of_work_date'
    end
    object StringField8: TStringField
      DisplayLabel = #1040#1082#1090' '#1089#1076#1072#1095#1080' '#1087#1088#1080#1077#1084#1082#1080
      FieldName = 'act_acceptance'
      Size = 255
    end
    object IntegerField7: TIntegerField
      DisplayLabel = #1040#1082#1090' '#1089#1076#1072#1095#1080' '#1087#1088#1080#1077#1084#1082#1080' '#1092#1074#1081#1083
      FieldName = 'act_acceptance_file'
    end
    object BooleanField3: TBooleanField
      DisplayLabel = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1076#1086#1075#1086#1074#1086#1088#1072
      FieldName = 'contract_execution_note'
    end
    object SmallintField1: TSmallintField
      DisplayLabel = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1076#1086#1075#1086#1074#1086#1088#1072', '#1092#1072#1081#1083
      FieldName = 'contract_execution_file'
    end
    object tblReportFiltr2type_task_i: TStringField
      FieldName = 'type_task_i'
      Size = 255
    end
    object tblReportFiltr2type_task_str: TStringField
      FieldName = 'type_task_str'
      Size = 255
    end
    object tblReportFiltr2basis_N: TStringField
      FieldName = 'basis_N'
      Size = 255
    end
    object tblReportFiltr2costofwork_F: TFloatField
      FieldName = 'costofwork_F'
    end
    object tblReportFiltr2dog_Primech: TStringField
      FieldName = 'dog_Primech'
      Size = 255
    end
    object tblReportFiltr2emty: TStringField
      FieldName = 'emty'
      Size = 255
    end
    object tblReportFiltr2mail_Num_In: TStringField
      FieldName = 'mail_Num_In'
      Size = 255
    end
    object tblReportFiltr2mail_Correspondent: TStringField
      FieldName = 'mail_Correspondent'
      Size = 255
    end
    object tblReportFiltr2mail_Data_In: TDateTimeField
      FieldName = 'mail_Data_In'
    end
    object tblReportFiltr2mail_Soderganie: TStringField
      FieldName = 'mail_Soderganie'
      Size = 255
    end
    object tblReportFiltr2mail_F: TIntegerField
      FieldName = 'mail_F'
    end
    object tblReportFiltr2mail_Ispolnitel: TStringField
      FieldName = 'mail_Ispolnitel'
      Size = 255
    end
    object tblReportFiltr2mail_Resoluzia: TStringField
      FieldName = 'mail_Resoluzia'
      Size = 255
    end
    object tblReportFiltr2nir_zayvka: TStringField
      FieldName = 'nir_zayvka'
      Size = 255
    end
    object tblReportFiltr2nir_zayvka_file: TIntegerField
      FieldName = 'nir_zayvka_file'
    end
    object tblReportFiltr2nir_zayvka_otpravleno: TDateTimeField
      FieldName = 'nir_zayvka_otpravleno'
    end
    object tblReportFiltr2nir_plan: TStringField
      FieldName = 'nir_plan'
      Size = 255
    end
    object tblReportFiltr2nir_teh_zad: TStringField
      FieldName = 'nir_teh_zad'
      Size = 255
    end
    object tblReportFiltr2nir_tz: TIntegerField
      FieldName = 'nir_tz'
    end
    object tblReportFiltr2nir_etap_srok: TDateTimeField
      FieldName = 'nir_etap_srok'
    end
    object tblReportFiltr2nir_otchet: TIntegerField
      FieldName = 'nir_otchet'
    end
    object tblReportFiltr2nir_act: TIntegerField
      FieldName = 'nir_act'
    end
    object tblReportFiltr2nir_vnedrenie: TIntegerField
      FieldName = 'nir_vnedrenie'
    end
    object tblReportFiltr2dog_Zakazchik: TStringField
      FieldName = 'dog_Zakazchik'
      Size = 255
    end
    object tblReportFiltr2dog_Predmet: TStringField
      FieldName = 'dog_Predmet'
      Size = 255
    end
    object tblReportFiltr2dog_Napravleniy: TDateTimeField
      FieldName = 'dog_Napravleniy'
    end
    object tblReportFiltr2dog_Podpisan: TDateTimeField
      FieldName = 'dog_Podpisan'
    end
    object tblReportFiltr2_SchedulerDBStorage_START: TStringField
      FieldName = '_SchedulerDBStorage_START'
      Size = 255
    end
    object tblReportFiltr2_ID: TIntegerField
      FieldName = '_ID'
    end
    object tblReportFiltr2ParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object tblReportFiltr2Type: TIntegerField
      FieldName = 'Type'
    end
    object tblReportFiltr2Start: TDateTimeField
      FieldName = 'Start'
    end
    object tblReportFiltr2Finish: TDateTimeField
      FieldName = 'Finish'
    end
    object tblReportFiltr2Options: TIntegerField
      FieldName = 'Options'
    end
    object tblReportFiltr2Caption: TStringField
      FieldName = 'Caption'
      Size = 255
    end
    object tblReportFiltr2RecurrenceIndex: TIntegerField
      FieldName = 'RecurrenceIndex'
    end
    object tblReportFiltr2RecurrenceInfo: TBlobField
      FieldName = 'RecurrenceInfo'
    end
    object tblReportFiltr2ResourceID: TBlobField
      FieldName = 'ResourceID'
    end
    object tblReportFiltr2Location: TStringField
      FieldName = 'Location'
      Size = 255
    end
    object tblReportFiltr2Message: TStringField
      FieldName = 'Message'
      Size = 255
    end
    object tblReportFiltr2ReminderDate: TDateTimeField
      FieldName = 'ReminderDate'
    end
    object tblReportFiltr2ReminderMinutes: TIntegerField
      FieldName = 'ReminderMinutes'
    end
    object tblReportFiltr2State: TIntegerField
      FieldName = 'State'
    end
    object tblReportFiltr2LabelColor: TIntegerField
      FieldName = 'LabelColor'
    end
    object tblReportFiltr2ActualStart: TDateTimeField
      FieldName = 'ActualStart'
    end
    object tblReportFiltr2ActualFinish: TDateTimeField
      FieldName = 'ActualFinish'
    end
    object tblReportFiltr2SyncIDField: TStringField
      FieldName = 'SyncIDField'
      Size = 255
    end
    object tblReportFiltr2__SchedulerDBStorage_END: TIntegerField
      FieldName = '__SchedulerDBStorage_END'
    end
  end
end
