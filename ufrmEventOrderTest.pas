unit ufrmEventOrderTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmEventOrder = class(TForm)
    lbEvents: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FLogList: TStringList;
    procedure AddLog(const LogMsg: string);
  public
    { Public declarations }
  end;

var
  frmEventOrder: TfrmEventOrder;

implementation

{$R *.dfm}

uses
  IOUtils;

procedure TfrmEventOrder.AddLog(const LogMsg: string);
var
  TimeStampedLogMsg: string;
begin
  if not Assigned(FLogList) then
    FLogList := TStringList.Create;

  TimeStampedLogMsg := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now) + ' - ' + LogMsg;

  if lbEvents.Visible then
    lbEvents.Items.Add(TimeStampedLogMsg);

  FLogList.Add(TimeStampedLogMsg);
end;

procedure TfrmEventOrder.FormActivate(Sender: TObject);
begin
  AddLog('FormActivate');
end;

procedure TfrmEventOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AddLog('FormClose');
end;

procedure TfrmEventOrder.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  AddLog('FormQuery');
  CanClose := True;
end;

procedure TfrmEventOrder.FormCreate(Sender: TObject);
begin
  AddLog('FormCreate');
end;

procedure TfrmEventOrder.FormDeactivate(Sender: TObject);
begin
  AddLog('FormDeactivate');
end;

procedure TfrmEventOrder.FormDestroy(Sender: TObject);
begin
  AddLog('FormDestroy');

  FLogList.SaveToFile(ChangeFileExt(ParamStr(0), '.log'));
end;

procedure TfrmEventOrder.FormHide(Sender: TObject);
begin
  AddLog('FormHide');
end;

procedure TfrmEventOrder.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AddLog('FormKeyDown');
end;

procedure TfrmEventOrder.FormKeyPress(Sender: TObject; var Key: Char);
begin
  AddLog('FormKeyPress');
end;

procedure TfrmEventOrder.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AddLog('FormKeyUp');
end;

procedure TfrmEventOrder.FormPaint(Sender: TObject);
begin
  AddLog('FormPaint');
end;

procedure TfrmEventOrder.FormResize(Sender: TObject);
begin
  AddLog('FormResize');
end;

procedure TfrmEventOrder.FormShow(Sender: TObject);
begin
  AddLog('FormShow');
end;

end.
