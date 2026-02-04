program EventOrderTest;

uses
  Forms,
  ufrmEventOrderTest in 'ufrmEventOrderTest.pas' {frmEventOrder};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmEventOrder, frmEventOrder);
  Application.Run;
end.
