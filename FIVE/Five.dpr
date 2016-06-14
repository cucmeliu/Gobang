program Five;

uses
  Forms,
  MainFrm in 'MainFrm.pas' {MainForm},
  WinnerFrm in 'WinnerFrm.pas' {WinnerForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
