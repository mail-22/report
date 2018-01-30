unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxSchedulerEventEditor, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxCheckBox,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutLookAndFeels,
  dxLayoutContainer, cxClasses, cxMemo, cxCheckComboBox, cxDropDownEdit,
  cxSpinEdit, cxTimeEdit, cxCalendar, cxMaskEdit, cxImageComboBox, cxTextEdit,
  Vcl.StdCtrls, cxButtons, cxLabel, cxGroupBox, dxLayoutControl, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Data.DB, dxmdaset, Menus, ComCtrls,
  DB, StdCtrls, Classes, Controls, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinscxPCPainter;

type
  TcxSchedulerEventEditorForm1 = class(TcxSchedulerEventEditorForm)
    Edit1: TEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    DataSource3: TDataSource;
    dxMemData2: TdxMemData;
    dxMemData2Value: TIntegerField;
    dxMemData2Value_Description: TStringField;
    cxLookupComboBox1: TcxLookupComboBox;
    dxLayoutItem13: TdxLayoutItem;
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure LoadEventValuesIntoControls; override;
    procedure DoHelperSaveChanges; override;
  public
    { Public declarations }
  end;

var
  cxSchedulerEventEditorForm1: TcxSchedulerEventEditorForm1;

implementation

{$R *.dfm}

procedure TcxSchedulerEventEditorForm1.cxLookupComboBox1PropertiesChange(
  Sender: TObject);
begin
  Modified := True;
end;

procedure TcxSchedulerEventEditorForm1.DoHelperSaveChanges;
begin
  inherited;
  if cxLookupComboBox1.EditModified then
    Event.SetCustomFieldValueByName('CustomField_Value', cxLookupComboBox1.EditValue);
end;

procedure TcxSchedulerEventEditorForm1.LoadEventValuesIntoControls;
begin
  inherited;
  cxLookupComboBox1.EditValue := Event.GetCustomFieldValueByName('CustomField_Value');
end;

end.
