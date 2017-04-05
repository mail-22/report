object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 134
  Top = 307
  Height = 458
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
    Database = 'C:\github\report\report\bin\r1.mdb'
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
    Active = True
    Left = 402
    Top = 64
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
  end
  object dsDepart: TDataSource
    DataSet = tblDepart
    OnDataChange = dsDepartDataChange
    Left = 412
    Top = 132
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
      '  (id_depart, `'#1080#1084#1103'`)'
      'VALUES'
      '  (:id_depart, :`'#1080#1084#1103'`)')
    SQLDelete.Strings = (
      'DELETE FROM employees'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE employees'
      'SET'
      '  id_depart = :id_depart, `'#1080#1084#1103'` = :`'#1080#1084#1103'`'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'UPDATE employees'
      'SET'
      '  id_depart = :id_depart'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT id_depart, `'#1080#1084#1103'` FROM employees'
      'WHERE'
      '  id = :id')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from employees where ( id_depart = :id)')
    MasterSource = dsDepart
    MasterFields = 'id'
    DetailFields = 'id_depart'
    Left = 492
    Top = 184
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
    object strngfldEmplDSDesigner: TStringField
      FieldName = #1080#1084#1103
      Size = 255
    end
  end
  object ds1: TDataSource
    DataSet = tblEmpl
    Left = 492
    Top = 252
  end
  object dsReportFiltr: TDataSource
    DataSet = tblReportFiltr2
    Left = 598
    Top = 144
  end
  object tblReport2: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO r1'
      
        '  (department, basis, basis_ffile, contract_name, contract_numbe' +
        'r, contract_file, deadline, costofwork, responsible, invoice, in' +
        'voice_file, payment_note, payment_date, performance_of_work_note' +
        ', performance_of_work_file, performance_of_work_date, act_accept' +
        'ance, act_acceptance_file, contract_execution_note, contract_exe' +
        'cution_file)'
      'VALUES'
      
        '  (:department, :basis, :basis_ffile, :contract_name, :contract_' +
        'number, :contract_file, :deadline, :costofwork, :responsible, :i' +
        'nvoice, :invoice_file, :payment_note, :payment_date, :performanc' +
        'e_of_work_note, :performance_of_work_file, :performance_of_work_' +
        'date, :act_acceptance, :act_acceptance_file, :contract_execution' +
        '_note, :contract_execution_file)')
    SQLDelete.Strings = (
      'DELETE FROM r1'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE r1'
      'SET'
      
        '  department = :department, basis = :basis, basis_ffile = :basis' +
        '_ffile, contract_name = :contract_name, contract_number = :contr' +
        'act_number, contract_file = :contract_file, deadline = :deadline' +
        ', costofwork = :costofwork, responsible = :responsible, invoice ' +
        '= :invoice, invoice_file = :invoice_file, payment_note = :paymen' +
        't_note, payment_date = :payment_date, performance_of_work_note =' +
        ' :performance_of_work_note, performance_of_work_file = :performa' +
        'nce_of_work_file, performance_of_work_date = :performance_of_wor' +
        'k_date, act_acceptance = :act_acceptance, act_acceptance_file = ' +
        ':act_acceptance_file, contract_execution_note = :contract_execut' +
        'ion_note, contract_execution_file = :contract_execution_file'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'UPDATE r1'
      'SET'
      '  department = :department'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT department, basis, basis_ffile, contract_name, contract_n' +
        'umber, contract_file, deadline, costofwork, responsible, invoice' +
        ', invoice_file, payment_note, payment_date, performance_of_work_' +
        'note, performance_of_work_file, performance_of_work_date, act_ac' +
        'ceptance, act_acceptance_file, contract_execution_note, contract' +
        '_execution_file FROM r1'
      'WHERE'
      '  id = :id')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from r1;')
    Active = True
    Left = 224
    Top = 40
    object tblReport2id: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      ReadOnly = True
    end
    object tblReport2department: TStringField
      DisplayLabel = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' , '#1086#1090#1076#1077#1083
      FieldName = 'department'
      Size = 255
    end
    object DepartL: TStringField
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
    object tblReport2basis: TStringField
      DisplayLabel = ' '#1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1076#1083#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
      FieldName = 'basis'
      Size = 255
    end
    object tblReport2basis_ffile: TIntegerField
      DisplayLabel = #1054#1089#1085#1086#1074#1072#1085#1080#1077', '#1092#1072#1081#1083
      FieldName = 'basis_ffile'
    end
    object tblReport2contract_number: TStringField
      DisplayLabel = #1076#1086#1075#1086#1074#1086#1088' -'#1085#1086#1084#1077#1088
      FieldName = 'contract_number'
      Size = 255
    end
    object tblReport2contract_name: TStringField
      DisplayLabel = #1076#1086#1075#1086#1074#1086#1088' - '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'  '
      FieldName = 'contract_name'
      Size = 255
    end
    object tblReport2contract_file: TIntegerField
      DisplayLabel = #1076#1086#1075#1086#1074#1086#1088' - '#1092#1072#1081#1083
      FieldName = 'contract_file'
    end
    object tblReport2deadline: TDateTimeField
      DisplayLabel = #1076#1086#1075#1086#1074#1086#1088' - '#1089#1088#1086#1082' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
      FieldName = 'deadline'
    end
    object tblReport2costofwork: TIntegerField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      FieldName = 'costofwork'
    end
    object tblReport2responsible: TStringField
      DisplayLabel = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
      FieldName = 'responsible'
      Size = 255
    end
    object tblReport2invoice: TStringField
      DisplayLabel = #1057#1095#1077#1090' '#1085#1072' '#1086#1087#1083#1072#1090#1091
      FieldName = 'invoice'
      Size = 255
    end
    object tblReport2invoice_file: TIntegerField
      FieldName = 'invoice_file'
    end
    object tblReport2payment_note: TBooleanField
      DisplayLabel = #1086#1090#1084#1077#1090#1082#1072' '#1086#1073' '#1086#1087#1083#1072#1090#1077
      FieldName = 'payment_note'
    end
    object tblReport2payment_date: TDateTimeField
      DisplayLabel = #1086#1090#1084#1077#1090#1082#1072' '#1086#1073' '#1086#1087#1083#1072#1090#1077' '#1076#1072#1090#1072
      FieldName = 'payment_date'
    end
    object tblReport2performance_of_work_note: TBooleanField
      DisplayLabel = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1088#1072#1073#1086#1090#1099' '
      FieldName = 'performance_of_work_note'
    end
    object tblReport2performance_of_work_file: TIntegerField
      DisplayLabel = #1074#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1099' - '#1092#1072#1081#1083
      FieldName = 'performance_of_work_file'
    end
    object tblReport2performance_of_work_date: TDateTimeField
      DisplayLabel = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1088#1072#1073#1086#1090#1099'  '#1076#1072#1090#1072
      FieldName = 'performance_of_work_date'
    end
    object tblReport2act_acceptance: TStringField
      DisplayLabel = #1040#1082#1090' '#1089#1076#1072#1095#1080' '#1087#1088#1080#1077#1084#1082#1080
      FieldName = 'act_acceptance'
      Size = 255
    end
    object tblReport2act_acceptance_file: TIntegerField
      DisplayLabel = #1040#1082#1090' '#1089#1076#1072#1095#1080' '#1087#1088#1080#1077#1084#1082#1080' '#1092#1074#1081#1083
      FieldName = 'act_acceptance_file'
    end
    object blnfldReport2contract_execution_note: TBooleanField
      DisplayLabel = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1076#1086#1075#1086#1074#1086#1088#1072
      FieldName = 'contract_execution_note'
    end
    object tblReport2contract_execution_file: TSmallintField
      DisplayLabel = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1076#1086#1075#1086#1074#1086#1088#1072', '#1092#1072#1081#1083
      FieldName = 'contract_execution_file'
    end
  end
  object tblReportFiltr2: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO r1'
      
        '  (department, basis, basis_ffile, contract_name, contract_numbe' +
        'r, contract_file, deadline, costofwork, responsible, invoice, in' +
        'voice_file, payment_note, payment_date, performance_of_work_note' +
        ', performance_of_work_file, performance_of_work_date, act_accept' +
        'ance, act_acceptance_file, contract_execution_note, contract_exe' +
        'cution_file)'
      'VALUES'
      
        '  (:department, :basis, :basis_ffile, :contract_name, :contract_' +
        'number, :contract_file, :deadline, :costofwork, :responsible, :i' +
        'nvoice, :invoice_file, :payment_note, :payment_date, :performanc' +
        'e_of_work_note, :performance_of_work_file, :performance_of_work_' +
        'date, :act_acceptance, :act_acceptance_file, :contract_execution' +
        '_note, :contract_execution_file)')
    SQLDelete.Strings = (
      'DELETE FROM r1'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE r1'
      'SET'
      
        '  department = :department, basis = :basis, basis_ffile = :basis' +
        '_ffile, contract_name = :contract_name, contract_number = :contr' +
        'act_number, contract_file = :contract_file, deadline = :deadline' +
        ', costofwork = :costofwork, responsible = :responsible, invoice ' +
        '= :invoice, invoice_file = :invoice_file, payment_note = :paymen' +
        't_note, payment_date = :payment_date, performance_of_work_note =' +
        ' :performance_of_work_note, performance_of_work_file = :performa' +
        'nce_of_work_file, performance_of_work_date = :performance_of_wor' +
        'k_date, act_acceptance = :act_acceptance, act_acceptance_file = ' +
        ':act_acceptance_file, contract_execution_note = :contract_execut' +
        'ion_note, contract_execution_file = :contract_execution_file'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'UPDATE r1'
      'SET'
      '  department = :department'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT department, basis, basis_ffile, contract_name, contract_n' +
        'umber, contract_file, deadline, costofwork, responsible, invoice' +
        ', invoice_file, payment_note, payment_date, performance_of_work_' +
        'note, performance_of_work_file, performance_of_work_date, act_ac' +
        'ceptance, act_acceptance_file, contract_execution_note, contract' +
        '_execution_file FROM r1'
      'WHERE'
      '  id = :id')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from r1;')
    Left = 608
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
    object IntegerField4: TIntegerField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      FieldName = 'costofwork'
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
  end
end
